//
//  Fonts.swift
//  Core
//
//  Created by Sorawit Trutsat on 16/4/2564 BE.
//

import Foundation
import CoreText
import UIKit

public enum Fonts: String, CaseIterable {
    case robotoBlackItalic = "Roboto-BlackItalic"
    case robotoBlack = "Roboto-Black"
    case robotoBoldItalic = "Roboto-BoldItalic"
    case robotoBold = "Roboto-Bold"
    
    static var installed = false
}

public extension Fonts {
    static func install(from bundles: [Bundle] = []) {
        Fonts.installed = true
        for each in Fonts.allCases {
            for bundle in bundles {
                if let cfURL = bundle.url(forResource: each.rawValue, withExtension: "ttf") {
                    CTFontManagerRegisterFontsForURL(cfURL as CFURL, .process, nil)
                } else {
                    assertionFailure("Could not find font:\(each.rawValue) in bundle:\(bundle)")
                }
            }
        }
    }
}

public extension Fonts {
    func size(_ size : CGFloat) -> UIFont {
        if Fonts.installed == false {
            Fonts.install()
        }
        return UIFont(name: self.rawValue, size:  size)!
    }
}
