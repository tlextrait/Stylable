//
//  LabelStyle.swift
//  Pods
//
//  Created by Thomas Lextrait (Personal) on 11/27/16.
//
//

import UIKit

public struct LabelStyle {
    var textStyle: TextStyle?
    var backgroundColor: UIColor?
    var cornerRadius: CGFloat = 0.0
    var textAlignment: NSTextAlignment?
    var shadow: NSShadow?
    var alpha: CGFloat = 1.0
    var lineBreakMode: NSLineBreakMode = .ByTruncatingTail
    
    public init(textStyle textStyle: TextStyle?,
                          alignment: NSTextAlignment? = nil,
                          backgroundColor: UIColor? = nil) {
        self.textStyle = textStyle
        self.textAlignment = alignment
        self.backgroundColor = backgroundColor
    }
    
    public func make(textStyle textStyle: TextStyle?,
                               alignment: NSTextAlignment? = nil,
                               backgroundColor: UIColor? = nil) -> LabelStyle {
        return LabelStyle(textStyle: textStyle, alignment: alignment, backgroundColor: backgroundColor)
    }
    
    public mutating func withCornerRadius(radius: CGFloat) -> LabelStyle {
        cornerRadius = radius
        return self
    }
    
    public mutating func withShadow(shadow: NSShadow) -> LabelStyle {
        self.shadow = shadow
        return self
    }
    
    public mutating func withAlpha(alpha: CGFloat) -> LabelStyle {
        self.alpha = alpha
        return self
    }
    
    public mutating func withLineBreakMode(mode: NSLineBreakMode) -> LabelStyle {
        lineBreakMode = mode
        return self
    }
}
