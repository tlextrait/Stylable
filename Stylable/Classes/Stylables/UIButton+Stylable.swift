//
//  UIButton+Stylable.swift
//  Pods
//
//  Created by Thomas Lextrait (Personal) on 11/26/16.
//
//

import UIKit

private typealias UIButtonStylable = UIButton

extension UIButtonStylable: Stylable {

    public func apply(style: TextStyle) {
        titleLabel?.font = style.font
        setTitleColor(style.color, forState: .Normal)
    }
    
    public func style() -> TextStyle {
        return TextStyle(font: titleLabel?.font, color: titleLabel?.textColor)
    }
    
}
