//
//  UITextField+Padding.swift
//  Human
//
//  Created by mac on 9/24/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

open class CustomUITextField: UITextField {

    let padding = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    
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
