//
//  Binder.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import Foundation
import Combine

public class Binder<Value> {
    
    private let queue: DispatchQueue?
    private let sink: (Value) -> Void
    
    init(queue: DispatchQueue? = nil, sink: @escaping (Value) -> Void) {
        
        self.queue = queue
        self.sink = sink
    }
            
    func bind<P>(_ publisher: P) -> AnyCancellable where P: Publisher, P.Output == Value, P.Failure == Never {
        
        if let queue = queue {
            return publisher.receive(on: queue).sink(receiveValue: sink)
        } else {
            return publisher.sink(receiveValue: sink)
        }
    }
}

public final class StrongBinder<Value>: Binder<Value> {
    
    public init<Target>(target: Target, queue: DispatchQueue? = nil, binding: @escaping (Target, Value) -> Void) {
        super.init(queue: queue) { value in binding(target, value) }
    }
}

public final class WeakBinder<Value>: Binder<Value> {
    
    public init<Target: AnyObject>(target: Target, queue: DispatchQueue? = nil, binding: @escaping (Target, Value) -> Void) {
        
        super.init(queue: queue) { [weak target] value in
            
            if let target = target {
                binding(target, value)
            }
        }
    }
}
