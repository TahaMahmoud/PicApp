//
//  UITextField+PlaceholderColor.swift
//  Steps
//
//  Created by Taha on 1/10/21.
//

import UIKit

@IBDesignable
class ColoredTextFieldPlaceholder: UITextField {
    
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            setUpView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }

    func setUpView() {
                
        self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: placeholderColor!])

    }

}
