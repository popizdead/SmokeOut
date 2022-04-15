//
//  UIViewController+Keyboard.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UIViewController {
    func setupKeyboardHiding() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hide))
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    @objc private func hide() {
        self.view.endEditing(true)
    }
}
