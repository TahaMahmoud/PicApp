//
//  Client.swift
//  CountryWiki
//
//  Created by mac on 9/21/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation
import Alamofire

struct NetworkClient {
    typealias onSuccess<T> = ((T) -> ())
    typealias onFailure = ( (_ error: Error) -> ())

    static func performRequest<T>(_ object: T.Type, router: Router, success: @escaping onSuccess<T>, failure: @escaping onFailure) where T: Decodable {
        
        AF.request(router).responseJSON { (response) in
            do {
                if let data = try response.data
                {
                    let response = try JSONDecoder().decode(T.self, from: data)
                    success(response)
                }

            } catch let error {
                failure(error)
            }
        }
    }
    
}
