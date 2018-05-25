//
//  Style.swift
//  pinknoise
//
//  Created by Adam Tait on 2/22/18.
//  Copyright © 2018 Sisterical Inc. All rights reserved.
//

import Foundation
import UIKit




enum StyleType
{
    case bgColor
    case fgColor
    case borderColor
    case borderWidth
    case cornerRadius
    case textAlignment
    case fontName
    case fontSize
    case imageName
    case insets
}
typealias Style = [StyleType : Any]



// AKA "Style"
extension Dictionary where Key == StyleType
{
    static func merge(_ styles: [Style]) -> Style
    {
        return styles.reduce([:], { acc, style in
            acc.merging(style, uniquingKeysWith: { (_, n) in n})
        })
    }
    
    func merge(_ styles: [Style]) -> Style
    {
        let s = [self] + styles
        return Dictionary.merge(s)
    }

    
    func font() -> UIFont
    {
        let n = self[.fontName] as! String
        let s = CGFloat(self[.fontSize] as! Double)
        return UIFont(name: n, size: s)!
    }
}
