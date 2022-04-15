//
//  Router.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

class Coordinator {
    private let authService = AuthService()
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let authCoordinator = AuthCoordinator(navigationController: navigationController, authService: authService)
        authCoordinator.start()
    }
}
