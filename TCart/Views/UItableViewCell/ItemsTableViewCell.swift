//
//  ItemsTableViewCell.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {

    @IBOutlet weak var checkImageWidht: NSLayoutConstraint!
    @IBOutlet weak var inputTextField: CustomTextfield! {
        didSet {
            inputTextField.setLittleRightIcon("person.circle")
            
        }
    }
    
    @IBOutlet weak var selectionImage: UIImageView!
    
    @IBOutlet weak var dropDownTextfield: CustomTextfield! {
        didSet {
            dropDownTextfield.setLittleRightIcon("arrow.down.circle")
        }
    }
   
    let myPicker = UIPickerView()
    var editingMode : Bool!
    var myrow : RowModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myPicker.delegate = self
        myPicker.dataSource = self
        dropDownTextfield.inputView = myPicker
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

 
    }
    

    func configureCell(rows : RowModel ) {
        self.myrow = rows
        self.dropDownTextfield.text = rows.dropDownList.first
        self.inputTextField.text = rows.name
    }


}

extension ItemsTableViewCell : UIPickerViewDelegate , UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
        return myrow.dropDownList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.dropDownTextfield.text = myrow.dropDownList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myrow.dropDownList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 32.0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont.systemFont(ofSize: 16)
            pickerLabel?.textAlignment = .center
        }

        pickerLabel?.textColor = UIColor.darkGray
    
    
        pickerLabel?.text = myrow.dropDownList[row]
      
        return pickerLabel!
        
    }
    
    
}

