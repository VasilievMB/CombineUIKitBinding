import XCTest
import Combine
@testable import CombineUIKitBinding

final class CombineUIKitBindingTests: XCTestCase {
    
    private weak var weakTargetReference: AnyObject?
    
    override func tearDownWithError() throws {
        XCTAssertNil(weakTargetReference)
    }
    
    func testLabelTextBinding() throws {
        
        let textSubject = PassthroughSubject<String, Never>()
        let label = UILabel()
        
        self.weakTargetReference = label
        
        let subscription = textSubject.bind(to: label.binders.text)
        
        XCTAssertNil(label.text)
        
        textSubject.send("Text 1")
        XCTAssertEqual(label.text, "Text 1")
        
        textSubject.send("Text 2")
        XCTAssertEqual(label.text, "Text 2")
        
        subscription.cancel()
    }
}
