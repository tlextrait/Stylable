//
//  ViewController.swift
//  Stylable
//
//  Created by Thomas Lextrait on 11/26/2016.
//  Copyright (c) 2016 Thomas Lextrait. All rights reserved.
//

import UIKit
import Stylable

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    
    let MyTextStyle = TextStyle(font: UIFont(name: "Georgia", size: 15.0), color: UIColor.redColor())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.apply(MyTextStyle)
        label2.apply(label1.style())
        
        button1.apply(MyTextStyle)
        button2.apply(button1.style())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

