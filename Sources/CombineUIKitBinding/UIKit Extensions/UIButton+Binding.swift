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
    
    func titleColor(for state: UIControl.State) -> Binder<UIColor?> {
        WeakBinder(target: target) { button, color in button.setTitleColor(color, for: state) }
    }
    
    func titleShadowColor(for state: UIControl.State) -> Binder<UIColor?> {
        WeakBinder(target: target) { button, color in button.setTitleShadowColor(color, for: state) }
    }
    
    func image(for state: UIControl.State) -> Binder<UIImage?> {
        WeakBinder(target: target) { button, image in button.setImage(image, for: state) }
    }
    
    func backgroundImage(for state: UIControl.State) -> Binder<UIImage?> {
        WeakBinder(target: target) { button, image in button.setBackgroundImage(image, for: state) }
    }
    
    func preferredSymbolConfigurationForImage(in state: UIControl.State) -> Binder<UIImage.SymbolConfiguration?> {
        WeakBinder(target: target) { button, configuration in button.setPreferredSymbolConfiguration(configuration, forImageIn: state) }
    }
    
    func attributedTitle(for state: UIControl.State) -> Binder<NSAttributedString?> {
        WeakBinder(target: target) { button, attributedTitle in button.setAttributedTitle(attributedTitle, for: state) }
    }
}
