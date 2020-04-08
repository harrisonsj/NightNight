//
//  UIView+IBInspectable.swift
//  Pods
//
//  Created by Draveness on 7/7/16.
//
//

import Foundation

public extension UIView {
    @IBInspectable public var nightBackgroundColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.backgroundColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.backgroundColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalBackgroundColor, night: newValue){
                mixedBackgroundColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalBackgroundColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.backgroundColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.backgroundColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightBackgroundColor){
                mixedBackgroundColor = mixedColor
            }
        }
    }

    @IBInspectable public var nightTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.tintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.tintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTintColor, night: newValue){
                mixedTintColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.tintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.tintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTintColor){
                mixedTintColor = mixedColor
            }
        }
    }
}

public extension UILabel{
    @IBInspectable public var nightTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTextColor, night: newValue){
                mixedTextColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTextColor){
                mixedTextColor = mixedColor
            }
        }
    }
}

extension UIBarButtonItem{
    @IBInspectable public var nightTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.tintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.tintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTintColor, night: newValue){
                //mixedTintColor = mixedColor
                //mixedColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.tintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.tintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTintColor){
                //mixedTintColor = mixedColor
                //mixedColor = mixedColor
            }
        }
    }
}

extension UINavigationBar{
    @IBInspectable public var nightBarTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.barTintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.barTintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalBarTintColor, night: newValue){
                mixedBarTintColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalBarTintColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.barTintColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.barTintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightBarTintColor){
                mixedBarTintColor = mixedColor
            }
        }
    }
}

public extension UITextField{
    @IBInspectable public var nightTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTextColor, night: newValue){
                mixedTextColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTextColor){
                mixedTextColor = mixedColor
            }
        }
    }
}

public extension UITextView{
    @IBInspectable public var nightTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTextColor, night: newValue){
                mixedTextColor = mixedColor
            }
        }
    }
    @IBInspectable public var normalTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTextColor){
                mixedTextColor = mixedColor
            }
        }
    }
}

public extension UIButton{
    @IBInspectable public var nightTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(normalTextColor, night: newValue){
                //titleLabel?.mixedTextColor = mixedColor
                setMixedTitleColor(mixedColor, forState: UIControl.State())
            }
        }
    }
    @IBInspectable public var normalTextColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.textColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let mixedColor = MixedColor(newValue, night: nightTextColor){
                setMixedTitleColor(mixedColor, forState: UIControl.State())
            }
        }
    }
}
