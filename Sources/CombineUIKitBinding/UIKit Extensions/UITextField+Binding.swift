//
//  File.swift
//  
//
//  Created by Mikhail on 02.12.2022.
//

import UIKit

public extension Binders where Target: UITextField {
    
    var text: Binder<String?> {
        WeakBinder(target: target) { textField, text in textField.text = text }
    }
    
    var attributedText: Binder<NSAttributedString?> {
        WeakBinder(target: target) { textField, attributedText in textField.attributedText = attributedText }
    }
    
    var font: Binder<UIFont?> {
        WeakBinder(target: target) { textField, font in textField.font = font }
    }
    
    var textColor: Binder<UIColor?> {
        WeakBinder(target: target) { textField, textColor in textField.textColor = textColor }
    }
    
    var placeholder: Binder<String?> {
        WeakBinder(target: target) { textField, placeholder in textField.text = placeholder }
    }
    
    var attributedPlaceholder: Binder<NSAttributedString?> {
        WeakBinder(target: target) { textField, attributedPlaceholder in textField.attributedPlaceholder = attributedPlaceholder }
    }
}
