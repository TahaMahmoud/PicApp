//
//  Constants.swift
//  CountryWiki
//
//  Created by mac on 9/21/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation

struct Constants {
    
    static let baseURL = "https://api.pexels.com/v1/"
    
    static let searchEndPoint = "search"
    static let queryParameter = "?query="
    static let pageParameter = "&page="

    static let API_TOKEN = "563492ad6f91700001000001f0ac198c5b62489694fef7731aaa1252"
}

enum HTTPHeaderField: String {
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
    case authorization = "Authorization"
    case contentLanguage = "Content-Language"
}

enum ContentType: String {
    case json = "application/x-www-form-urlencoded; charset=utf-8"
    case accept = "*/*"
    case acceptEncoding = "gzip;q=1.0, compress;q=0.5"
}
