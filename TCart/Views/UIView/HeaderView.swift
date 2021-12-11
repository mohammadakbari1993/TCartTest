//
//  HeaderView.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import UIKit

protocol BoxViewDelegate {
    func newRowAddTouch(box : BoxModel , index : Int)
    func boxDidDelete(index : Int)
}

class HeaderView: UIView {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var addBtn: RoundedButton!
    
    var box : BoxModel!
    var boxIndex : Int!
    var delegate : BoxViewDelegate?
    var RootVC : UIViewController!
    
    func configureView(box : BoxModel , index : Int , delegate : BoxViewDelegate , vc : UIViewController) {
        self.titleLbl.text = box.title
        self.box = box
        self.boxIndex = index
        self.delegate = delegate
        self.RootVC = vc
    }
    
    @IBAction func deleteBoxDidTouch(_ sender: Any) {
        MessagePopUp.removeItem.showAction(VC: self.RootVC) {
            if let del = self.delegate {
                del.boxDidDelete(index: self.boxIndex)
            }
        } cancelDidTouch: {
            
        }

    }
    
    @IBAction func addBtnDidTouch(_ sender: Any) {
        
        self.RootVC.showAlertWithRowInput { text in
            var array = [String]()
            for index in 0...10 {
                array.append("\(index + 1) \(text)")
            }
           
            let row = RowModel(dropDownList: array, name: text)
           
            if var rows = self.box.rows {
                rows.append(row)
                self.box.rows = rows
            } else {
                let rows = [row]
                self.box.rows = rows
            }
            
           
            if let del = self.delegate {
                del.newRowAddTouch(box: self.box, index: self.boxIndex)
            }
        }
    
    }
}
