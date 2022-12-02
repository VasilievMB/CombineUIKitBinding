//
//  File.swift
//  
//
//  Created by Mikhail on 02.12.2022.
//

import UIKit

public extension Binders where Target: UIImageView {
    
    var image: Binder<UIImage?> {
        WeakBinder(target: target) { imageView, image in imageView.image = image }
    }
    
    var highlightedImage: Binder<UIImage?> {
        WeakBinder(target: target) { imageView, image in imageView.highlightedImage = image }
    }
    
    var isHighlighted: Binder<Bool> {
        WeakBinder(target: target) { imageView, isHighlighted in imageView.isHighlighted = isHighlighted }
    }
}
