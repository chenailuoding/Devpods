//
//  ColorTools.swift
//  Devpods
//
//  Created by 刘礼燕 on 2022/4/21.
//

import Foundation

public class LYColor:UIColor {
    
    /// 随机色
    /// - Returns: 随机颜色
    public class func ly_randomColor() -> UIColor {
        let r = CGFloat(arc4random() % 256) / 255.0
        let g = CGFloat(arc4random() % 256) / 255.0
        let b = CGFloat(arc4random() % 256) / 255.0
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        return color
    }
    
    
    /// 十六制颜色
    /// - Parameter hex: 0xFFFFFF
    /// - Returns: color
    public class func ly_hexColor(hex:UInt32) -> UIColor {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let b = CGFloat((hex & 0xFF)) / 255.0
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        return color
    }
    
    public class func ly_hexColorAlpha(hex:UInt32, alpha:CGFloat) -> UIColor {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let b = CGFloat((hex & 0xFF)) / 255.0
        let color = UIColor(red: r, green: g, blue: b, alpha: alpha)
        return color
    }
    
    
    /// 0~255 颜色
    /// - Parameters:
    ///   - red: red(0~255)
    ///   - green: green(0~255)
    ///   - blue: blue(0~255)
    ///   - alpha: alpha 透明度，默认1.0
    /// - Returns: color
    public class func ly_color(red:UInt8, green:UInt8, blue:UInt8, alpha: CGFloat = 1.0) -> UIColor {
        let r = CGFloat(red) / 255.0
        let g = CGFloat(green) / 255.0
        let b = CGFloat(blue) / 255.0
        let color = UIColor(red: r, green: g, blue: b, alpha: alpha)
        return color
    }
    
    
    /// hex string 转颜色
    /// - Parameters:
    ///   - hexStr: hexString
    ///   - alpha: alpha
    /// - Returns: color
    public class func ly_hexStrColor(hexStr:String, alpha:CGFloat = 1.0) -> UIColor {
        let scanner = Scanner(string: hexStr)
        scanner.scanLocation = 0
        var rgbValue:UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((rgbValue & 0xFF00) >> 8) / 255.0
        let b = CGFloat((rgbValue & 0xFF)) / 255.0
        let color = UIColor(red: r, green: g, blue: b, alpha: alpha)
        return color
    }
}
