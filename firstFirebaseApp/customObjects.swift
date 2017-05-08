//
//  customObjects.swift
//  yeswestock
//
//  Created by Danyal Aboobakar on 13/04/2017.
//  Copyright © 2017 Danyal Aboobakar. All rights reserved.
//

import UIKit

@IBDesignable

class customTextfield: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
}

@IBDesignable

class customButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red:0.25, green:0.58, blue:0.58, alpha:1.0)
        self.layer.shadowOffset = CGSize(width: 3,height: 3)
        // set the radius
        self.layer.shadowRadius = 5
        // change the color of the shadow (has to be CGColor)
        self.layer.shadowColor = UIColor.black.cgColor
        // display the shadow
        self.layer.shadowOpacity = 1.0
        //set title font
        self.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 17)
    }
}

