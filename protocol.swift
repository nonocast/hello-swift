print("Protocols and Extension")

// mutating有什么用?

protocol ExampleProtocol {
  var name: String { get }
  func hello()
}

class SimpleClass: ExampleProtocol {
  var name: String
  init() {
    name = "nonocast"
  }

  func hello() {
    name = "hui"
    print("hello, \(name)")
  }
}

SimpleClass().hello()

extension String: ExampleProtocol {
  var name: String {
    return self
  }

  func hello() {
    print("hello, \(self)")
  }
}

"tom".hello()