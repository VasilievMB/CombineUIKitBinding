//
//  UIView+Binding.swift
//  
//
//  Created by Mikhail on 02.12.2022.
//

import UIKit

extension UIView: BindingTarget {}

public extension Binders where Target: UIView {
    
    var isUserInteractionEnabled: Binder<Bool> {
        WeakBinder(target: target) { view, isUserInteractionEnabled in view.isUserInteractionEnabled = isUserInteractionEnabled }
    }
    
    var isHidden: Binder<Bool> {
        WeakBinder(target: target) { view, isHidden in view.isHidden = isHidden }
    }
    
    var backgroundColor: Binder<UIColor?> {
        WeakBinder(target: target) { view, backgroundColor in view.backgroundColor = backgroundColor }
    }
    
    var tintColor: Binder<UIColor> {
        WeakBinder(target: target) { view, tintColor in view.tintColor = tintColor }
    }
}
