//
//  UILabel+Stylable.swift
//  Pods
//
//  Created by Thomas Lextrait on 11/26/16.
//
//

import UIKit

private typealias UILabelStylable = UILabel

extension UILabelStylable: Stylable {

    public func apply(style: TextStyle) {
        font = style.font
        textColor = style.color
    }
    
}
