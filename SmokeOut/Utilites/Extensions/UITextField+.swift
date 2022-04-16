//
//  UITextField+.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UITextField {
    static func createTextField(text: String, font: UIFont, placeholder: String? = nil) -> UITextField {
        let field = UITextField()
        field.font = font
        field.text = text
        field.placeholder = placeholder
        field.borderStyle = .roundedRect
        field.textColor = UIColor.darkGray
        return field
    }
}
