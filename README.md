# Stack implementation in Swift

Generic stack implementation in Swift programming language.

```swift
protocol Stackable {
    associatedtype Element

    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func isEmpty() -> Bool
    func peek() -> Element?
}
```

# Usage

See [test](https://github.com/lukabratos/Stack/blob/master/Stack.playground/Contents.swift#L33).
