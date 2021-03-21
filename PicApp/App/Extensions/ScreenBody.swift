//
//  ScreenBody.swift
//  COVID19 MUST
//
//  Created by Taha on 5/3/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

@IBDesignable
class ScreenBody: UIView {
        
    @IBInspectable var cornerRadius: CGFloat = 25.0 {
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
        
        // cornerRadius
        self.layer.cornerRadius = cornerRadius
        
        // roundedUpCorners
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        
        self.clipsToBounds = true
    }
}
