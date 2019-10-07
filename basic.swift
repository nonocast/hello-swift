print("hello world")

// var & let
var myVariable = 1
myVariable = 2
let myConstant = 1
// myConstatn = 2 x ERROR

// type
let implicitInteger = 70
let explicitDoule: Double = 70

// swift是抢类型, 申明时必须指定类型
// let p;

var username: String = "nonocast"
print("my name is \(username)")
print("my name is \(2 + 3)")

let quotation = """
line 1 {
  line 2
} line 3
"""

print(quotation)

var shoppingList = ["catfish", "water", "tulips"]
print(shoppingList.count)

// error: empty collection literal requires an explicit type
// var emptyArray = [];
var emptyArray = [String]()

var occupations = [
  "Malcolm": "Captain",
  "Kaylee": "Mechanic",
]
print(occupations["Kaylee"]!)
// print(occupations["Kaylee"])

// empty
var emptyDictionary = [Int: String]()
// reset
emptyDictionary = [:]

// control flow
for each in shoppingList {
  print(each)
}

for each in ["a", "b", "c"] {
  print(each)
}

for each in [1: "a", 2: "b", 3: "c"] {
  print(each.key)
  print(each.value)
}

for (k, v) in [111: "aaa", 222: "bbb", 333: "ccc"] {
  print(k)
  print(v)
}

// optional
var optionalString: String? = "hello"
print(optionalString == nil)
// Prints "false"

// error: var optionalString2?= "hello"

let nickName: String? = nil
let fullName: String = "John Appleseed"
// ?? 两边必须有空格
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

// 0,1,2
for i in 0 ..< 3 {
  print(i)
}

// 0,1,2,3
for i in 0 ... 3 {
  print(i)
}

func greet(person: String, day: String) -> String {
  return "Hello \(person), today is \(day)."
}

print(greet(person: "Bob", day: "Tuesday"))
// error: 参数必须按顺序来
// print(greet(day: "Tuesday", person: "Bob"))

func greet(_ person: String, on day: String) -> String {
  return "Hello \(person), today is \(day)."
}

print(greet("John", on: "Wednesday"))

// nest function and show closures
func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}

print(returnFifteen())

// Functions are a first-class type
let functionPointer = {
  10
}

print(functionPointer())

let functionPointer2: () -> Int = {
  10
}

func func1(_ condition: () -> Bool) {
  print(condition())
}

func1({return false})