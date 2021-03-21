//
//  Router+AuthRequired.swift
//  Human
//
//  Created by mac on 11/10/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation

extension Router {
    
    var AuthRequired: Bool {
        switch self {
        case .getPictures:
            return true
        }
        
    }

}
