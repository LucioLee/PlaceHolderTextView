//
//  ViewController.swift
//  PlaceHolderTextView
//
//  Created by 李新新 on 16/7/8.
//  Copyright © 2016年 李新新. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewA: PlaceHolderTextView!
    @IBOutlet weak var textViewB: PlaceHolderTextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "请留下您的宝贵意见...."
        
        textViewA.placeHolder = str
        textViewA.font = UIFont.systemFont(ofSize: 18)
        
        let textView = PlaceHolderTextView()
        textView.placeHolder = "请留下您的宝贵意见...."
        
        let attrStr = NSMutableAttributedString(string: str)
        attrStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSUnderlineColorAttributeName, value: UIColor.green, range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 18), range: NSRange(location: 0, length: 1))
        
        textViewB.attributedPlaceHolder = attrStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

