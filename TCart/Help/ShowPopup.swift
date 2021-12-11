//
//  ShowPopup.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import Foundation
import  UIKit


import UIKit


enum MessagePopUp {
    
    case removeItem
    case updateAndDeleteMode

    
    
    func showAction(VC : UIViewController,acceptDidTouch: @escaping() -> Void,cancelDidTouch: @escaping() -> Void) {
        
        var title = ""
        var description = ""
        var buttonOneTitle = ""
        var buttonTwoTitle = ""
        
        switch self {

        case .removeItem:
            title = "Delete"
            description = "Are you sure to delete this item ?"
            buttonOneTitle = "Delete"
            buttonTwoTitle = "Cancel"
        case .updateAndDeleteMode:
            title = "Rfresh"
            description = "Are you sure to Delete first item and update second item in the list?"
            buttonOneTitle = "Yes please do this"
            buttonTwoTitle = "No , why should i do this ?"
        }
        
            let alertController = UIAlertController(title: title, message: description, preferredStyle: .actionSheet)
            
            let  deleteButton = UIAlertAction(title: buttonOneTitle, style: .destructive, handler: { (action) -> Void in
                acceptDidTouch()
            })
            
            let cancelButton = UIAlertAction(title: buttonTwoTitle, style: .cancel, handler: { (action) -> Void in
                cancelDidTouch()
            })

            alertController.addAction(deleteButton)
            
            alertController.addAction(cancelButton)
            
            alertController.popoverPresentationController?.sourceRect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
          
            alertController.popoverPresentationController?.sourceView = VC.view
            
            VC.present(alertController, animated: true, completion: nil)
            
        }
 
}
