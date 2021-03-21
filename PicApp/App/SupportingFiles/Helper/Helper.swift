//
//  Helper.swift
//  COVID19 MUST
//
//  Created by Taha on 4/29/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import Foundation
import SystemConfiguration
import UIKit

class Helper {
       
    static let mainColor = UIColor(red: 0.27305448059999998, green: 0.2219465971, blue: 0.59282380339999996, alpha: 1)
    
    static var showState = true

    class func checkConnection () -> Bool
    {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
            return false
        }
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)

    }
                             
    class func getDeviceUUID() -> String
    {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
}
