//
//  UISegmentedControl+Font.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import Foundation
import UIKit

extension UISegmentedControl {
    func setFont() {
        let normalTextAttributes: [NSObject : AnyObject] = [
            NSAttributedString.Key.foregroundColor as NSObject: UIColor.darkGray,
            NSAttributedString.Key.font as NSObject: UIFont(name: "AvenirNext-Regular", size: 20)!
        ]
        
        let boldTextAttributes: [NSObject : AnyObject] = [
            NSAttributedString.Key.foregroundColor as NSObject : UIColor.darkGray,
            NSAttributedString.Key.font as NSObject : UIFont(name: "AvenirNext-Medium", size: 20)!,
        ]
        
        self.setTitleTextAttributes(normalTextAttributes as? [NSAttributedString.Key : Any], for: .normal)
        self.setTitleTextAttributes(normalTextAttributes as? [NSAttributedString.Key : Any], for: .highlighted)
        self.setTitleTextAttributes(boldTextAttributes as? [NSAttributedString.Key : Any], for: .selected)
    }
}
