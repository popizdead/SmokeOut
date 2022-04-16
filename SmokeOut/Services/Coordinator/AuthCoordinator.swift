//
//  AuthCoordinator.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

class AuthCoordinator {
    private let navigationController: UINavigationController
    private let authService: AuthService
    
    init(navigationController: UINavigationController, authService: AuthService) {
        self.navigationController = navigationController
        self.authService = authService
    }
    
    func start() {
        let viewModel = AuthViewModel(authService: authService, coordinator: self)
        let authVC = AuthViewController(viewModel: viewModel)
        navigationController.pushViewController(AuthKnowledgeViewController(), animated: true)
    }
    
    func goToKnowledgeScreen() {
        let knowledgeVC = AuthKnowledgeViewController()
        navigationController.pushViewController(knowledgeVC, animated: true)
    }
}
