//
//  ViewController.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var myBoxs = [BoxModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.myTableView.register(UINib(nibName: "ItemsTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemsTableViewCell")
 

    }

    @IBAction func addNewBoxDidTouch(_ sender: Any) {
        
        self.showAlertWithInput { text in
            let box = BoxModel(title: text)
            self.myBoxs.append(box)
            self.reloadTable()
        }
        
    }
    
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return myBoxs.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let row = myBoxs[section].rows {
            return row.count
        } else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemsTableViewCell") as! ItemsTableViewCell
        cell.configureCell(rows: myBoxs[indexPath.section].rows![indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = XibLoader.shared.LoadHeaderView(box: self.myBoxs[section], index: section , delegate: self , vc: self)
        return view
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {

        MessagePopUp.removeItem.showAction(VC: self) {
           
            self.myBoxs[indexPath.section].rows?.remove(at: indexPath.row)
            self.reloadTable()
            
        } cancelDidTouch: {
            
        }
        
      }
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension ViewController : BoxViewDelegate {
    
    func boxDidDelete(index: Int) {
        
        self.myBoxs.remove(at: index)
        self.reloadTable()
    }
    
    func reloadTable() {
        
        DispatchQueue.main.async {
            UIView.transition(with: self.myTableView,
                              duration: 0.35,
                              options: .transitionCrossDissolve,
                              animations: { self.myTableView.reloadData() })
        }
        
        print("your Boxs is Here : \n" , myBoxs)
    }
    
    func newRowAddTouch(box: BoxModel, index: Int) {
        self.myBoxs[index] = box
        reloadTable()
    
    }
    

    
}

