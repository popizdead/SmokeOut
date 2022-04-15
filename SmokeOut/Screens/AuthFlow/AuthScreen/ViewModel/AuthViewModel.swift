//
//  AuthViewModel.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import Foundation
import Combine

enum AuthViewControllerState {
    case initialized
    case loading
    case error(message: String)
}

class AuthViewModel {
    private let authService: AuthService
    private let coordinator: AuthCoordinator
    
    var statePublisher = CurrentValueSubject<AuthViewControllerState, Never>(.initialized)
    
    init(authService: AuthService, coordinator: AuthCoordinator) {
        self.authService = authService
        self.coordinator = coordinator
    }
    
    func createUser(mail: String?, password: String?) {
        self.statePublisher.value = .loading
        
        authService.createUser(mail: mail, password: password) { [weak self] isSuccess, errorMessage in
            if isSuccess {
                self?.statePublisher.value = .initialized
                self?.coordinator.goToKnowledgeScreen()
            } else {
                self?.showError(error: errorMessage)
            }
        }
    }
    
    private func showError(error: String?) {
        let message: String
        if let errorMessage = error {
            message = errorMessage
        } else {
            message = Constants.Errors.general
        }
        
        self.statePublisher.value = .error(message: message)
    }
}
