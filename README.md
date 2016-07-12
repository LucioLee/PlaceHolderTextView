# PlaceHolderTextView
TextView with placeHolder(support attributePlaceHolder)\n
带placeHolder的TextView,支持属性字符串作为placeHolder
### demo code：
```
let placeHolder = "请留下您的宝贵意见...."
let textView = PlaceHolderTextView()
textView.placeHolder = placeHolder

let attrStr = NSMutableAttributedString(string: str)
attrStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: attrStr.length))
attrStr.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: NSRange(location: 0, length: attrStr.length))
attrStr.addAttribute(NSUnderlineColorAttributeName, value: UIColor.greenColor(), range: NSRange(location: 0, length: attrStr.length))
attrStr.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(18), range: NSRange(location: 0, length: 1))
textViewB.attributedPlaceHolder = attrStr
```
### 效果
![image](https://github.com/LucioLee/PlaceHolderTextView/blob/master/Simulator Screen Shot 2016年7月12日 14.39.45.png)