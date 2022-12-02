//
//  UIButton+Binding.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public extension Binders where Target: UIButton {
    
    func title(for state: UIControl.State) -> Binder<String?> {
        WeakBinder(target: target) { button, title in button.setTitle(title, for: state) }
    }
}
