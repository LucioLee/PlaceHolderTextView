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
        
        let str = "请留下您的宝贵意见....请留下您的宝贵意见....请留下您的宝贵意见....请留下您的宝贵意见....请留下您的宝贵意见...."
        
        textViewA.placeHolder = str
        textViewA.font = UIFont.systemFontOfSize(18)
        
        let attrStr = NSMutableAttributedString(string: str)
        attrStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSUnderlineColorAttributeName, value: UIColor.greenColor(), range: NSRange(location: 0, length: attrStr.length))
        attrStr.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(18), range: NSRange(location: 0, length: 1))
        
        attrStr.
        textViewB.attributedPlaceHolder = attrStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

