//
//  UITextfield.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//


import Foundation
import UIKit

extension UITextField {
    
    func setLeftIcon(_ image: String) {
        
        let iconView = UIImageView(frame: CGRect(x: 16, y: 12.5, width: 15, height: 15))
        iconView.contentMode = .scaleAspectFit
        if let img = UIImage(named: image) {
            iconView.image = img
        } else {
            iconView.image = UIImage(named: "appLogo")
        }
        let iconContainerView = UIView(frame: CGRect(x: 50, y: 2, width: 40, height: 40))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    
    }
    
    func setRightIcon(_ image: String) {
        
        let iconView = UIImageView(frame: CGRect(x: 7.5, y: 7.5, width: 15, height: 15))
        iconView.contentMode = .scaleAspectFit
        if let img = UIImage(named: image) {
            iconView.image = img
        } else {
            iconView.image = UIImage(named: "appLogo")
        }
        
        let iconContainerView = UIView(frame: CGRect(x: 40, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    
    }
    
    
    func setLittleRightIcon(_ image: String) {
        
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 10, height: 10))
        iconView.contentMode = .scaleAspectFit
        if let img = UIImage(systemName: image) {
            iconView.image = img
        } else {
            iconView.image = UIImage(systemName: image)
        }
        
        let iconContainerView = UIView(frame: CGRect(x: 30, y: 0, width: 20, height: 20))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    
    }
    

    
    
    func setLeftTitle(_ Title: String) {
        let label = UILabel(frame: CGRect(x: 20, y: 5, width: 30, height: 30))
        label.contentMode = .scaleAspectFit
        label.text = Title
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = #colorLiteral(red: 0.819493711, green: 0.8195128441, blue: 0.8276723027, alpha: 1)
        let iconContainerView = UIView(frame: CGRect(x: 50, y: 0, width: 40, height: 40))
        iconContainerView.addSubview(label)
        leftView = iconContainerView
        leftViewMode = .always
    }
   
    
    
}

