//
//  UIDevice+UDID.swift
//  TemplateDemo
//
//  Created by imac on 2019/8/1.
//  Copyright © 2019 jack. All rights reserved.
//

import Foundation
import UIKit
import  KeychainSwift
extension UIDevice {
    /// 厂商ID key
    private static let udidKey = "VendorID"
    /// 获取设备唯一标识
    /// - parameter group: 为空则不共享，否则共享；共享格式"TeamID.groupname"
    /// reference: https://evgenii.com/blog/sharing-keychain-in-ios/
    public static func udid(_ group:String? = nil) -> String{
        let keychain = KeychainSwift()
        if let group = group {
            keychain.accessGroup = group
        }
        var  value = keychain.get(udidKey)
        guard value == nil else {
            return value!
        }
        value = UIDevice().identifierForVendor?.uuidString
        keychain.set(value!, forKey: udidKey)
        return value!
        
    }
}
