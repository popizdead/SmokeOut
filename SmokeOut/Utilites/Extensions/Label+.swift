//
//  Label+.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UILabel {
    static func createLabel(text: String, font: UIFont) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = UIColor.darkGray
        
        return label
    }
}
