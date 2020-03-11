import Foundation
import XCTest

protocol Stackable {
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func isEmpty() -> Bool
    func peek() -> Element?
}

struct Stack<Element>: Stackable {
    private var arr: [Element] = [Element]()
    
    mutating func push(_ element: Element) {
        arr.append(element)
    }
    
    mutating func pop() -> Element? {
        arr.popLast()
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
    
    func peek() -> Element? {
        return arr.last
    }
}

class StackTests: XCTestCase {
    var stack: Stack<Int>!

    override func setUp() {
        super.setUp()
        stack = Stack<Int>()
    }

    func testStack() {
        XCTAssertNotNil(stack)
        stack.push(1)
        stack.push(2)
        stack.push(3)
        guard let value = stack.peek() else {
            return XCTFail()
        }
        XCTAssertEqual(value, 3)
        stack.pop()
        stack.pop()
        guard let firstElement = stack.peek() else {
            return XCTFail()
        }
        XCTAssertEqual(firstElement, 1)
        stack.pop()
        XCTAssertNil(stack.peek())
        XCTAssertTrue(stack.isEmpty())
    }
    
    override func tearDown() {
        super.tearDown()
        stack = nil
    }
}

StackTests.defaultTestSuite.run()
