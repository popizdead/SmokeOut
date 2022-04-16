//
//  Styleguide.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

typealias Font = Styleguide.Font

struct Styleguide {
    struct Font {
        static let headerFont : UIFont = .avenirNext(size: 23, type: .medium)
        static let labelFont  : UIFont = .avenirNext(size: 23, type: .regular)
        static let fieldFont  : UIFont = .avenirNext(size: 23, type: .regular)
    }
}
