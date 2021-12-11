//
//  CustomTextField.swift
//  Tcart
//
//  Created by Bahman on 11/9/21.
//


import Foundation
import UIKit
@IBDesignable
class CustomTextfield: UITextField {
    

    
    @IBInspectable var leftImage: UIImage? {
        
        didSet {
            
                 let iconView = UIImageView(frame: CGRect(x: 10, y: 13, width: 15, height: 15))
                 iconView.contentMode = .scaleAspectFit
                 iconView.image = leftImage
                 let iconContainerView = UIView(frame: CGRect(x: 50, y: 0, width: 40, height: 40))
                 iconContainerView.addSubview(iconView)
                 leftView = iconContainerView
                 leftViewMode = .always
         }
        
     }
     
    
    @IBInspectable var rightImage: UIImage? {
        
         didSet {
            
                 let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 25, height: 25))
                 iconView.contentMode = .scaleAspectFit
                 iconView.image = rightImage
                 let iconContainerView = UIView(frame: CGRect(x: 50, y: 0, width: 40, height: 40))
                 iconContainerView.addSubview(iconView)
                 rightView = iconContainerView
                 rightViewMode = .always
         }
        
     }
    
    
    required init?(coder aDecorder: NSCoder) {
    super.init(coder: aDecorder)
    // Add custom code here
       
        self.font = UIFont.systemFont(ofSize: 13)
        self.textColor = UIColor.black
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.systemGray5.cgColor
        
    }
    
    
    let padding = UIEdgeInsets(top: 0, left: 28, bottom: 0, right: 28)

        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    
    
}




@IBDesignable
class CyrcleCustomTextfield: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
         didSet {
            
                 let iconView = UIImageView(frame: CGRect(x: 10, y: 13, width: 15, height: 15))
                 iconView.contentMode = .scaleAspectFit
                 iconView.image = leftImage
                 let iconContainerView = UIView(frame: CGRect(x: 50, y: 0, width: 40, height: 40))
                 iconContainerView.addSubview(iconView)
                 leftView = iconContainerView
                 leftViewMode = .always
         }
     }
     
    
    @IBInspectable var rightImage: UIImage? {
         didSet {
            
                 let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 25, height: 25))
                 iconView.contentMode = .scaleAspectFit
                 iconView.image = rightImage
                 let iconContainerView = UIView(frame: CGRect(x: 50, y: 0, width: 40, height: 40))
                 iconContainerView.addSubview(iconView)
                 rightView = iconContainerView
                 rightViewMode = .always
         }
     }
    
    
    required init?(coder aDecorder: NSCoder) {
    super.init(coder: aDecorder)
    // Add custom code here
        self.font = UIFont.systemFont(ofSize: 13)
        self.textColor = UIColor.black
        self.textColor = UIColor.black
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 5
        
        
    }
    
    
    let padding = UIEdgeInsets(top: 0, left: 45, bottom: 0, right: 45)

        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    
    
}
