//
//  AppFonts.swift
//  Human
//
//  Created by mac on 9/26/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

class AppFonts {
    
    static func getLightFont(fontSize: CGFloat) -> UIFont {
        return UIFont(name: "Roboto-Light", size: fontSize)!
    }
    
    static func getMediumFont(fontSize: CGFloat) -> UIFont {
        return UIFont(name: "Roboto-Medium", size: fontSize)!
    }
    
    static func getBoldFont(fontSize: CGFloat) -> UIFont {
        return UIFont(name: "Roboto-Bold", size: fontSize)!
    }
    
}
