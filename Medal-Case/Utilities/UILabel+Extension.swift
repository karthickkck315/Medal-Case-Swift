//
//  UILabel+Extension.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import Foundation
import UIKit


extension UILabel {
    
    func setUpLabel(font: UIFont, textColor: UIColor, alignment: NSTextAlignment) {
        self.textColor = textColor
        self.font = font
        self.textAlignment = alignment
    }
}
