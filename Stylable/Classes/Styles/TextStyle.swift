//
//  TextStyle.swift
//  Pods
//
//  Created by Thomas Lextrait on 11/26/16.
//
//

import UIKit

public struct TextStyle {
    var font: UIFont?
    var color: UIColor?
    var letterSpacing: CGFloat = 1.0
    var lineSpacing: CGFloat = 1.0
    
    public init(font font: UIFont?, color color: UIColor? = nil) {
        self.font = font
        self.color = color
    }
    
    public func make(font font: UIFont?, color color: UIColor? = nil) -> TextStyle {
        return TextStyle(font: font, color: color)
    }
    
    public mutating func withLetterSpacing(spacing: CGFloat) -> TextStyle {
        letterSpacing = spacing
        return self
    }
    
    public mutating func withLineSpacing(spacing: CGFloat) -> TextStyle {
        lineSpacing = spacing
        return self
    }
}
