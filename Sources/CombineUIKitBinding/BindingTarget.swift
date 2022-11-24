//
//  BindingTarget.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import Foundation

public protocol BindingTarget {

    associatedtype Target
    
    var binders: Binders<Target> { get }
}

public extension BindingTarget {
    
    var binders: Binders<Self> {
        Binders(target: self)
    }
}
