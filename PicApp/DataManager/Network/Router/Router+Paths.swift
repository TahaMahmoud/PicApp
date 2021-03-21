//
//  Router+Paths.swift
//  Human
//
//  Created by mac on 11/10/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation

extension Router {
        
    var path: String {
        switch self {
        case .getPictures(let searchValue, let page):
            return Constants.searchEndPoint + Constants.queryParameter + searchValue + Constants.pageParameter + "\(page)"
        }
    }

}
