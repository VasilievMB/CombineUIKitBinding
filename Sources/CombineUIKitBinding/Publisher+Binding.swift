//
//  Publisher+Binding.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import Foundation
import Combine

public extension Publisher where Failure == Never {
    
    func bind<Value>(to binder: Binder<Value>) -> AnyCancellable where Value == Output {
        binder.bind(self)
    }
    
    func bind<Value>(to binder: Binder<Optional<Value>>) -> AnyCancellable where Value == Output {
        binder.bind(map { Optional.some($0) })
    }
}
