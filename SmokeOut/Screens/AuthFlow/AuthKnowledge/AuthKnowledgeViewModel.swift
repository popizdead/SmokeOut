//
//  AuthKnowledgeViewModel.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import Combine
import Foundation

enum PackType {
    case cigarette
    case tobacco
}

class AuthKnowledgeViewModel {
    var packTypePublisher = CurrentValueSubject<PackType, Never>(.cigarette)
    
    func segmentedControlChanged(_ to: PackType) {
        packTypePublisher.value = to
    }
}
