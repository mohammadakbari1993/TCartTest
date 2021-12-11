//
//  CustomButton.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import UIKit
import Foundation

class FilledAppButton: UIButton {

    required init?(coder aDecorder: NSCoder) {
    super.init(coder: aDecorder)
    // Add custom code here
       
        self.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        self.setTitleColor(UIColor.white, for: .normal)
        //self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 5
        //self.layer.borderColor = UIColor.AppGreen?.cgColor
        self.backgroundColor = UIColor.systemGreen
    }

}

class RoundedButton: UIButton {

    required init?(coder aDecorder: NSCoder) {
    super.init(coder: aDecorder)
    // Add custom code here
        self.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = 5
    }

}
