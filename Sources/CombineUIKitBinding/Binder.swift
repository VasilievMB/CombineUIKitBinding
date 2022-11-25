//
//  Binder.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import Foundation
import Combine

public class Binder<Value> {
    
    private let sink: (Value) -> Void
    
    init(sink: @escaping (Value) -> Void) {
        self.sink = sink
    }
            
    func bind<P>(_ publisher: P) -> AnyCancellable where P: Publisher, P.Output == Value, P.Failure == Never {
        publisher.sink(receiveValue: sink)
    }
}

public final class StrongBinder<Value>: Binder<Value> {
    
    public init<Target>(target: Target, binding: @escaping (Target, Value) -> Void) {
        super.init { value in binding(target, value) }
    }
}

public final class WeakBinder<Value>: Binder<Value> {
    
    public init<Target: AnyObject>(target: Target, binding: @escaping (Target, Value) -> Void) {
        
        super.init { [weak target] value in
            
            if let target = target {
                binding(target, value)
            }
        }
    }
}
