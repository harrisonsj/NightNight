//
//  UIButton+Mixed.swift
//  Pods
//
//  Created by Draveness on 7/10/16.
//
//

import Foundation

public extension UIButton {
    public func setMixedTitleColor(color: MixedColor, forState state: UIControlState) {
        mixedTitleColorDictionary[NSNumber(controlState: state)] = color
        setTitleColor(color.unfold(), forState: state)
    }

    public func setMixedTitleShadowColor(color: MixedColor, forState state: UIControlState) {
        mixedTitleShadowColorDictionary[NSNumber(controlState: state)] = color
        setTitleShadowColor(color.unfold(), forState: state)
    }

    public func setMixedImage(image: MixedImage, forState state: UIControlState) {
        mixedImageDictionary[NSNumber(controlState: state)] = image
        setImage(image.unfold(), forState: state)
    }

    public func setMixedBackgroundImage(backgroundImage: MixedImage, forState state: UIControlState) {
        mixedBackgroundImageDictionary[NSNumber(controlState: state)] = backgroundImage
        setImage(backgroundImage.unfold(), forState: state)
    }

    public override func updateCurrentStatus() {
        super.updateCurrentStatus()

        mixedTitleColorDictionary.forEach { (state, mixedColor) in
            setTitleColor(mixedColor.unfold(), forState: UIControlState(number: state))
        }

        mixedTitleShadowColorDictionary.forEach { (state, mixedColor) in
            setTitleShadowColor(mixedColor.unfold(), forState: UIControlState(number: state))
        }

        mixedImageDictionary.forEach { (state, mixedImage) in
            setImage(mixedImage.unfold(), forState: UIControlState(number: state))
        }

        mixedBackgroundImageDictionary.forEach { (state, mixedImage) in
            setBackgroundImage(mixedImage.unfold(), forState: UIControlState(number: state))
        }
    }
}

// MARK: - Storage
private extension UIButton {
    private struct AssociatedKeys {
        static var mixedTitleColorDictionaryKey = "mixedTitleColorDictionaryKey"
        static var mixedTitleShadowColorDictionaryKey = "mixedTitleColorDictionaryKey"
        static var mixedImageDictionaryKey = "mixedImageDictionaryKey"
        static var mixedBackgroundImageDictionaryKey = "mixedBackgroundImageDictionaryKey"
    }
    private var mixedTitleColorDictionary: [NSNumber: MixedColor] {
        get {
            NSNumber(unsignedLong: UIControlState.Application.rawValue)
            if let dict = objc_getAssociatedObject(self, &AssociatedKeys.mixedTitleColorDictionaryKey) as? [NSNumber: MixedColor] {
                return dict
            }

            mixedTitleColorDictionary = [:]

            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateTheme), name: NightNightThemeChangeNotification, object: nil)

            return mixedTitleColorDictionary
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.mixedTitleColorDictionaryKey, newValue as AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var mixedTitleShadowColorDictionary: [NSNumber: MixedColor] {
        get {
            NSNumber(unsignedLong: UIControlState.Application.rawValue)
            if let dict = objc_getAssociatedObject(self, &AssociatedKeys.mixedTitleShadowColorDictionaryKey) as? [NSNumber: MixedColor] {
                return dict
            }

            mixedTitleShadowColorDictionary = [:]

            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateTheme), name: NightNightThemeChangeNotification, object: nil)

            return mixedTitleShadowColorDictionary
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.mixedTitleShadowColorDictionaryKey, newValue as AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var mixedImageDictionary: [NSNumber: MixedImage] {
        get {
            NSNumber(unsignedLong: UIControlState.Application.rawValue)
            if let dict = objc_getAssociatedObject(self, &AssociatedKeys.mixedImageDictionaryKey) as? [NSNumber: MixedImage] {
                return dict
            }

            mixedImageDictionary = [:]

            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateTheme), name: NightNightThemeChangeNotification, object: nil)

            return mixedImageDictionary
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.mixedImageDictionaryKey, newValue as AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var mixedBackgroundImageDictionary: [NSNumber: MixedImage] {
        get {
            NSNumber(unsignedLong: UIControlState.Application.rawValue)
            if let dict = objc_getAssociatedObject(self, &AssociatedKeys.mixedBackgroundImageDictionaryKey) as? [NSNumber: MixedImage] {
                return dict
            }

            mixedBackgroundImageDictionary = [:]

            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateTheme), name: NightNightThemeChangeNotification, object: nil)

            return mixedBackgroundImageDictionary
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.mixedBackgroundImageDictionaryKey, newValue as AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

private extension UIControlState {
    init(number: NSNumber) {
        self.init(rawValue: number.unsignedIntegerValue)
    }
}

private extension NSNumber {
    convenience init(controlState: UIControlState) {
        self.init(unsignedLong: controlState.rawValue)
    }
}
