//
//  PlaceHolderTextView.swift
//  PlaceHolderTextView
//
//  Created by 李新新 on 16/7/8.
//  Copyright © 2016年 李新新. All rights reserved.
//

import UIKit

open class PlaceHolderTextView: UITextView {
    
    fileprivate var _placeHolderLabel: UILabel!
    
    open var attributedPlaceHolder: NSAttributedString? = nil {
        didSet {
            _placeHolderLabel.attributedText = attributedPlaceHolder
            setNeedsDisplay()
        }
    }
    open var placeHolder: String? = nil {
        didSet {
            _placeHolderLabel.text = placeHolder
            setNeedsDisplay()
        }
    }
    override open var text: String! {
        didSet {
            textDidChange()
        }
    }
    
    override open var font: UIFont? {
        didSet {
            if _placeHolderLabel != nil {
                _placeHolderLabel.font = font
            }
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        let size =  _placeHolderLabel.sizeThatFits(CGSize(width: bounds.width - 10 ,height: CGFloat(MAXFLOAT)))
        _placeHolderLabel.frame = CGRect(origin: CGPoint(x: 5,y: 5), size: size)
    }
    
    
    override public init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        addPlaceHolderLabel()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addPlaceHolderLabel()
        textDidChange()
    }
    
    fileprivate func addPlaceHolderLabel() {
        _placeHolderLabel = UILabel()
        _placeHolderLabel.numberOfLines = 0
        _placeHolderLabel.font = self.font ?? UIFont.systemFont(ofSize: 16)
        _placeHolderLabel.textColor = UIColor.lightGray
        _placeHolderLabel.backgroundColor = UIColor.clear
        addSubview(_placeHolderLabel)
        NotificationCenter.default.addObserver(self, selector: #selector(PlaceHolderTextView.textDidChange), name: NSNotification.Name.UITextViewTextDidChange, object: self)
    }
    
    final func textDidChange() {
        _placeHolderLabel.isHidden = text.isEmpty ? false : true
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
