//
//  File.swift
//  
//
//  Created by Mikhail on 02.12.2022.
//

import UIKit

public extension Binders where Target: UIControl {
        
    var isEnabled: Binder<Bool> {
        WeakBinder(target: target) { control, isEnabled in control.isEnabled = isEnabled }
    }
    
    var isSelected: Binder<Bool> {
        WeakBinder(target: target) { control, isSelected in control.isSelected = isSelected }
    }
    
    var isHighlighted: Binder<Bool> {
        WeakBinder(target: target) { control, isHighlighted in control.isHighlighted = isHighlighted }
    }
}
