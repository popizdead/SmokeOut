//
//  AuthViewController.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit
import Combine

class AuthViewController: UIViewController {
    typealias LocalizableLabels = Constants.AuthScreenLabels
    
    //MARK: -Outlets
    @IBOutlet private weak var mailLabel: UILabel!
    @IBOutlet private weak var mailField: UITextField!
    
    @IBOutlet private weak var passwordLabel: UILabel!
    @IBOutlet private weak var passwordField: UITextField!
    
    @IBOutlet private weak var signUpButton: UIButton!
    
    //MARK: -Properties
    private let viewModel: AuthViewModel
    private var bindings: Set<AnyCancellable> = []
    
    //MARK: -Init
    init(viewModel: AuthViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
        setupVC()
    }
    
    private func setupVC() {
        setupKeyboardHiding()
        localize()
    }
    
    //MARK: -Business logic
    private func bind() {
        viewModel.statePublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] state in
                self?.stateChanged(state)
            }
            .store(in: &bindings)
    }
    
    private func stateChanged(_ state: AuthViewControllerState) {
        switch state {
        case .initialized:
            setLoadingIndicatorVisibility(isShowing: false)
        case .error(let message):
            setLoadingIndicatorVisibility(isShowing: false)
            self.showAlert(message)
        case .loading:
            setLoadingIndicatorVisibility(isShowing: true)
        }
    }
    
    private func setLoadingIndicatorVisibility(isShowing: Bool) {
        if isShowing {
            self.appearLoadingIndicator()
        } else {
            self.removeLoadingIndicator()
        }
    }
    
    //MARK: -UI
    private func localize() {
        mailLabel.text = LocalizableLabels.mail
        passwordLabel.text = LocalizableLabels.password
        
        mailField.placeholder = LocalizableLabels.enterMail
        passwordField.placeholder = LocalizableLabels.enterPassword
        
        signUpButton.setTitle(LocalizableLabels.signUp, for: .normal)
    }
    
    //MARK: -Actions
    @IBAction func signUpTapped(_ sender: Any) {
        let mail = mailField.text
        let password = passwordField.text
        
        viewModel.createUser(mail: mail, password: password)
    }
}
