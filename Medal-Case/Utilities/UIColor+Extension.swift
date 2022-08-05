//
//  UIColor+Extension.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import Foundation
import UIKit

extension UIColor {
    
    static let appThemeColor = UIColor(rgba: "#63C6D4")
    static let appWhiteColor = UIColor(rgba: "#FFFFFF")
    static let appLightGrayColor = UIColor(rgba: "#666666")
    static let appBlackColor = UIColor(rgba: "#000000")
    static let appSectionTitleColor = UIColor(rgba: "#333333")
    static let appSectionBGColor = UIColor(rgba: "#F7F7F7")
    
    convenience init(rgba: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if rgba.hasPrefix("#") {
            let index   = rgba.index(rgba.startIndex, offsetBy: 1)
            let hex     = rgba[index...]
            let scanner = Scanner(string: String(hex))
            
            var hexValue: CUnsignedLongLong = 0
            if scanner.scanHexInt64(&hexValue) {
                if hex.count == 6 {
                    red   = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)  / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF) / 255.0
                } else if hex.count == 8 {
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                } else {
                    print("invalid rgb string, length should be 7 or 9", terminator: "")
                }
            } else {
                print("scan hex error")
            }
        } else {
            print("invalid rgb string, missing '#' as prefix", terminator: "")
        }
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
}
