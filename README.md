# CombineUIKitBinding
 A little framework for binding data to UIKit views using Combine
 
## Installation
Go to Xcode > File > Add Packages..., enter the URL to this repository, select dependency rule and project and click 'Add Package'.

## Usage
```swift
class ExampleViewModel {
    
    @Published private(set) var text = ""
    
    // ...
}

class ExampleViewController: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    
    private var subscriptions = Set<AnyCancellable>()
    
    func configure(with viewModel: ExampleViewModel) {
        
        subscriptions = [
            viewModel.$text.bind(to: label.binders.text), // <---
        ]
    }
}
```

## Why it's better than Combine's `assign(to\:on\:)`
1. You can use weak reference to the target object while `assign(to\:on\:)` keeps a strong reference.
1. You can pass parameters when creating bindings
1. You can add custom binders without adding properties to the target class

## License
CombineUIKitBinding is available under the MIT license. See the LICENSE file for more info.
