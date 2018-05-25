//
//  UIView+Style.swift
//  pinknoise
//
//  Created by Adam Tait on 3/1/18.
//  Copyright © 2018 Sisterical Inc. All rights reserved.
//

import UIKit

extension UIView
{
    func set(style : Style)
    {
        if let v = style[.bgColor] as? UIColor      { self.backgroundColor = v }
        if let v = style[.fgColor] as? UIColor      { self.tintColor = v }
        if let v = style[.borderColor] as? UIColor  { self.layer.borderColor = v.cgColor }
        
        if let v = style[.borderWidth] {
            self.layer.borderWidth = toCgFloat(anyNumber: v)
        }
        
        if let v = style[.cornerRadius] {
            self.layer.cornerRadius = toCgFloat(anyNumber: v)
        }
    }
    
    convenience init(with style: Style)
    {
        self.init()
        self.set(style: style)
    }
}
