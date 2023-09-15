//
//  Appcolor.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/15.
//


import Foundation
import UIKit

class AppColor {
    // 濃い緑を返す
    class var primary: UIColor {
        return rgbColor(rgbValue: 0x73C6B6)
    }

    // ピンクを返す
    class var secondary: UIColor{
        return rgbColor(rgbValue: 0xFF00FF)
    }

    // 白っぽい灰色を返す
    class var background: UIColor{
        return rgbColor(rgbValue: 0xFAF9F9)
    }

    // #FFFFFFのように色を指定できるようにするメソッド！色が使いやすくなる。
    // ここでしか使わないので privateメソッドにする。
    private class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

