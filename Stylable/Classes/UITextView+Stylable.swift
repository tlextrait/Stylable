//
//  UITextView+Stylable.swift
//  Pods
//
//  Created by Thomas Lextrait (Personal) on 11/26/16.
//
//

import UIKit

private typealias UITextViewStylable = UITextView

extension UITextViewStylable: Stylable {

    public func apply(style: TextStyle) {
        font = style.font
        textColor = style.color
    }
    
}
