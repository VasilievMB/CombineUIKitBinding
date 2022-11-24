//
//  Binders.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import Foundation

public struct Binders<Target> {
    
    private let target: Target
    
    init(target: Target) {
        self.target = target
    }
}
