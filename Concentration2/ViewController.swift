//
//  ViewController.swift
//  Concentration2
//
//  Created by Boppo on 09/04/19.
//  Copyright © 2019 Boppo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
        
        let swiftyText = "hello"
        
        var objcText = NSMutableAttributedString(string: swiftyText)
        
        let elRange = swiftyText.firstIndex(of: "e")!...swiftyText.firstIndex(of: "l")!
        
        let nsrange = NSRange(elRange, in: swiftyText)
        
        
        let font = UIFont(name: "Helvetica", size: 12.0)
        let metrics = UIFontMetrics.default// or UIFontMetrics.default
        let fontToUse = metrics.scaledFont(for: font!)

        
        objcText.addAttribute(.font, value: fontToUse, range: nsrange)
       // objcText.addAttribute(.foregroundColor, value: UIColor.red, range: nsrange)
        
        
        label.attributedText = objcText
        
        
        
        
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
       
        
        
    }

//    override func viewLayoutSubviews() {
//        super.layoutSubviews()
//        <#code#>
//        // reposition my subview's frames based on my new bounds
//    }
    

}

