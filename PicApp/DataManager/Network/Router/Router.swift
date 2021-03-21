//
//  Router.swift
//  CountryWiki
//
//  Created by mac on 9/21/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
       
    // Get Pictures
    case getPictures(searchValue: String, page: Int)
    
    func asURLRequest() -> URLRequest {
        let url = URL(string: Constants.baseURL + path.replacingOccurrences(of: " ", with: ""))
        var request = URLRequest(url: url!)
        request.httpMethod = method.rawValue
        request.addValue("application/json", forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        request.addValue("application/json", forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)

        if AuthRequired {
            request.addValue(Constants.API_TOKEN, forHTTPHeaderField: HTTPHeaderField.authorization.rawValue)
        }
        
        if let parameters = parameters {
            if let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [.prettyPrinted]) {
                request.httpBody = httpBody
            }
        }
    
        do {
            return try encoding.encode(request, with: parameters)
        } catch {
            return request
        }
        
        // return request
    
    }
    
}
