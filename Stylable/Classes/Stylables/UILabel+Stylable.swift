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

    /**
     Applies the given Text Style to this label
     - parameter: TextStyle
    */
    public func apply(style: TextStyle) {
        font = style.font
        textColor = style.color

        if charCount > 0 {
            let paragraph = NSMutableParagraphStyle()
            paragraph.lineSpacing = style.lineSpacing
            let attrString = NSMutableAttributedString(string: self.text!)
            attrString.addAttribute(NSParagraphStyleAttributeName,
                                    value: paragraph,
                                    range: NSRange(location: 0, length: charCount))
            attrString.addAttribute(NSKernAttributeName,
                                    value: style.letterSpacing,
                                    range: NSRange(location: 0, length: charCount))
            self.attributedText = attrString
        }
    }
    
    public func style() -> TextStyle {
        return TextStyle(font: font, color: textColor)
    }
    
    /**
     Applies the given Label Style to this label
     - parameter: LabelStyle
     */
    public func apply(style: LabelStyle) {
        layer.cornerRadius = style.cornerRadius
        alpha = style.alpha
        lineBreakMode = style.lineBreakMode
        
        if style.textStyle != nil {
            apply(style.textStyle!)
        }
        
        if style.backgroundColor != nil {
            backgroundColor = style.backgroundColor!
        }
        
        if style.textAlignment != nil {
            textAlignment = style.textAlignment!
        }
        
        if style.shadow != nil {
            shadowColor = style.shadow!.shadowColor as? UIColor
            shadowOffset = style.shadow!.shadowOffset
        }
    }
    
    /**
     Returns character count, or 0 if the text property is nil
     - returns: character count
    */
    public var charCount: Int {
        get {
            return text == nil ? 0 : text!.characters.count
        }
    }
    
}
