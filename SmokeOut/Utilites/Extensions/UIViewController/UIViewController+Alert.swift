//
//  UIViewController+Alert.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UIViewController {
    func showAlert(_ text: String) {
        let alert = UIAlertController(title: "Error", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
