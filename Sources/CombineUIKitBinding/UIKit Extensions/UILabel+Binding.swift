//
//  File.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import UIKit

extension UILabel: BindingTarget {}

public extension Binders where Target: UILabel {
    
    var text: Binder<String?> {
        WeakBinder(target: target, queue: .main) { label, text in label.text = text }
    }
}
