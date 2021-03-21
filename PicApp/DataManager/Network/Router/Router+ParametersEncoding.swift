//
//  Router+ParametersEncoding.swift
//  Steps
//
//  Created by Taha on 2/6/21.
//

import Foundation
import Alamofire

extension Router {
    
    var encoding : ParameterEncoding {
        switch method {
        case .get:
            return URLEncoding.default
        case .post:
            return JSONEncoding.default
        }
    }

}

