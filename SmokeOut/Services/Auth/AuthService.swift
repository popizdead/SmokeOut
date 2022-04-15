//
//  AuthService.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import Foundation
import FirebaseAuth

class AuthService {
    var user: User?
    
    static func isUserSignedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    func createUser(mail: String?, password: String?, completion: @escaping ((Bool, String?) -> Void)) {
        guard mail != "" else {
            let error = Constants.Errors.mailFieldError
            completion(false, error)
            return
        }
        guard password != "" else {
            let error = Constants.Errors.passwordFieldError
            completion(false, error)
            return
        }
        
        Auth.auth().createUser(withEmail: mail!, password: password!) { result, error in
            let isSuccess = error == nil
            completion(isSuccess, error?.localizedDescription)
        }
    }
}
