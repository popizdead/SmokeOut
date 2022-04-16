//
//  UIFont+.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UIFont {
    enum FontType {
        case regular
        case medium
        case bold
    }
    
    static func avenirNext(size: CGFloat, type: FontType) -> UIFont {
        let fontType: String
        switch type {
        case .regular:
            fontType = "-Regular"
        case .medium:
            fontType = "-Medium"
        case .bold:
            fontType = "-Bold"
        }
        
        return UIFont(name: "AvenirNext\(fontType)", size: size)!
    }
}
