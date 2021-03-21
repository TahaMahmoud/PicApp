//
//  RoundedImage.swift
//  Human
//
//  Created by mac on 9/26/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedImage: UIImageView {
        
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }

    func setUpView() {
        
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
        
    }

}
