//
//  UIViewController.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import Foundation
import UIKit

extension UIViewController {

    func showAlertWithInput(complation: @escaping(_ taskDescription : String) -> Void) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "New Box", message: "Please insert a new Title", preferredStyle: .alert)

        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = "Type Your title"
        }

        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            complation(textField!.text!)
        }))

        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func showAlertWithRowInput(complation: @escaping(_ taskDescription : String) -> Void) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "New Row", message: "Please insert a new row Title", preferredStyle: .alert)

        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = "Type your row title"
        }

        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            complation(textField!.text!)
        }))

        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
