//
//  UILabel+Binding.swift
//  
//
//  Created by Mikhail on 24.11.2022.
//

import UIKit

public extension Binders where Target: UILabel {
    
    var text: Binder<String?> {
        WeakBinder(target: target) { label, text in label.text = text }
    }
    
    var attributedText: Binder<NSAttributedString?> {
        WeakBinder(target: target) { label, attributedText in label.attributedText = attributedText }
    }
    
    var font: Binder<UIFont> {
        WeakBinder(target: target) { label, font in label.font = font }
    }
    
    var textColor: Binder<UIColor> {
        WeakBinder(target: target) { label, textColor in label.textColor = textColor }
    }
    
    var highlightedTextColor: Binder<UIColor?> {
        WeakBinder(target: target) { label, highlightedTextColor in label.highlightedTextColor = highlightedTextColor }
    }
    
    var isHighlighted: Binder<Bool> {
        WeakBinder(target: target) { label, isHighlighted in label.isHighlighted = isHighlighted }
    }
    
    var isEnabled: Binder<Bool> {
        WeakBinder(target: target) { label, isEnabled in label.isEnabled = isEnabled }
    }
}
