//
//  Router+Methods.swift
//  Human
//
//  Created by mac on 11/10/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation

enum Method: String {
    
    case post
    case get
    
    var method: String {
        switch self {
        case .post:
            return "POST"
        case .get:
            return "GET"
        }
    }
    
}

extension Router {
    
    var method: Method {
        switch self {
        
        case .getPictures:
            return .get
        }
    }

}

