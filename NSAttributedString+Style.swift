//
//  NSAttributedString+Style.swift
//  pinknoise
//
//  Created by Adam Tait on 5/25/18.
//  Copyright © 2018 Sisterical Inc. All rights reserved.
//

import UIKit


extension NSAttributedString
{
    convenience init(_ string: String, with style: Style)
    {
        let ps = NSMutableParagraphStyle()
        ps.alignment = style[.textAlignment] as! NSTextAlignment
        
        let attrs : [NSAttributedStringKey : Any] = [
            .font               : style.font(),
            .foregroundColor    : style[.fgColor]!,
            .paragraphStyle     : ps]
        
        self.init(string: string, attributes: attrs)
    }
}
