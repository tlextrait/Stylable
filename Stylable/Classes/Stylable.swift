//
//  Stylable.swift
//  Pods
//
//  Created by Thomas Lextrait on 11/26/16.
//
//

import UIKit

public protocol Stylable {
    
    associatedtype Style
    mutating func apply(style: Style)
    
}
