print("Objects and Classes")

class Shape {
  var numberOfSides = 0
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

extension Shape {
  func hello() {
    print("Extension hello")
  }
}

var shape = Shape()
print(shape)
print(shape.hello())

shape.numberOfSides = 7
print(shape.simpleDescription())

class NamedShape {
  var numberOfSides: Int = 0
  var name: String

  init(name: String) {
    self.name = name
  }

  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

class Square: NamedShape {
  var sideLength: Double

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }

  func area() -> Double {
    return sideLength * sideLength
  }

  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

// getter and setter
class User {
  var _name: String
  init(_ name: String) { self._name = name }
  var name: String {
    get {
      return _name
    }
    set {
      _name = newValue
    }
  }
}

let user = User("nonocast")
user.name = "hui"
print(user.name)

enum Rank: Int {
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king

  func simpleDescription() -> String {
    switch self {
    case .ace:
      return "ace"
    case .jack:
      return "jack"
    case .queen:
      return "queen"
    case .king:
      return "king"
    default:
      return String(rawValue)
    }
  }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace)
print(aceRawValue)

func test(rank: Rank) {
  print(rank)
}

test(rank: Rank.ace)
test(rank: .ace)