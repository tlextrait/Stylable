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
    var letterSpacing: Float = 1.0
    var lineSpacing: Float = 1.0
    
    public init(font font: UIFont?, color color: UIColor? = nil) {
        self.font = font
        self.color = color
    }
}
