//
//  Constants.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import Foundation

struct Constants {
    struct Errors {
        static let mailFieldError = "Mail field is empty"
        static let passwordFieldError = "Password field is empty"
        static let general = "Something went wrong"
    }
    
    struct AuthScreenLabels {
        static let mail = "Mail"
        static let enterMail = "Enter mail"
        
        static let password = "Password"
        static let enterPassword = "Enter password"
        
        static let signUp = "Sign up"
    }
    
    struct AuthKnwoledgeScreenLabels {
        static let packTypeHeader = "I'm buying pack of"
        static let cigaretteSegment = "Cigarettes"
        static let tobaccoSegment = "Tobacco"
        
        static let amountPerDayHeader = "How many cigarettes do you smoke per day?"
        static let ciggareteAmount = "cigarette"
        static let knowledgeSwitchLabel = "I don't know"
        
        static let amountPerPackHeader = "How many cigarettes in pack"
        static let priceHeader = "How much does a pack cost?"
    }
}
