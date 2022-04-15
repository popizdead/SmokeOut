//
//  UIViewController+LoadingIndicator.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

extension UIViewController {
    private var activityIndicator: UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        indicator.style = .medium
        indicator.tag = 111
        indicator.center = self.view.center
        indicator.startAnimating()
        
        return indicator
    }
    
    func appearLoadingIndicator() {
        self.view.addSubview(activityIndicator)
    }
    
    func removeLoadingIndicator() {
        guard let indicator = self.view.viewWithTag(111) else {
            return
        }
        
        indicator.removeFromSuperview()
    }
}
