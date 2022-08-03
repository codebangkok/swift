//print("Hello World")

//Variable and Constant
var a: Int = 20
a = 10
a = 30
//print(a)

let b: Int
b = 10

//Type Inference
var c = 10.0
var d = "Hello"

//Numeric Literals
a = 10
a = 0b1010
a = 0o12
a = 0xA
a = 1_000_000

//String Literals
let name = "Bond"
d = "Hello " + name
d = "Hello \n\(name)"
d = #"c:\windows\system32"#
d = """
Hello\(name)
"World"
"""
//print(d)

//Other Literals
let e: Float = 10.5
let f = false
let h: Character = "A"
let i: UInt = 0

//Tuple
let j = (code: 200, message: "OK")
print(j.message)

//Conversion
let k = Int(10.5)
let l = String(10)
let m = Double(10)

//Array - ordered
var n: [Int] = [1,2,3]
n[0] = 10
n.append(4)

//Set - unordered
var o: Set = [1,2,3]
var p: Set = [3,4,5]
var q = o.subtracting(p)
print(q)

//Dictionary - Key/Value
var r: [String:String] = ["th": "Thailand", "us": "United State"]
r["th"] = "Thai"
r["en"] = "England"

//Upper Camel Case - PascalCase
//Lower Camel Case - camelCase

//Enumeration
enum Days {
    case monday, tuesday, wednesday
}

var s = Days.monday
s = .tuesday

//Enumeration - Raw Value
enum HttpStatus: String {
    case OK = "โอเค"
    case NotFound = "ไม่เจอ"
}
print(HttpStatus.OK.rawValue)

//Enumeration - Associated Value
enum Password {
    case Text(String)
    case Pin(Int)
}

var t = Password.Text("iloveyou")
t = Password.Pin(1234)

//If
if a > 10 {
    print("Hello")
}

var score = 80
if score >= 80 {
    print("A")
} else if score >= 70 {
    print("B")
} else {
    print("F")
}
var u = score >= 50 ? "Pass" : "Fail"

//Optional
var v: Int? = nil
v = 100
if v != nil {
    print(v!)
}
var w = v ?? 0
print(w)

if let v = v {
    print(v)
}

var y = 10
if true {
    let y = "Hello"
    print(y)
}
print(y)

if let first = Int("10"),
    let second = Int("20"),
    first < second {
    print("\(first), \(second)")
}

//Switch
let aa = Days.monday
switch aa {
case Days.monday:
    print("วันจันทร์")
case .tuesday:
    print("วันอังคาร")
case .wednesday:
    print("วันพุธ")
}

score = 85
switch score {
case 95,96,97,98,99:
    print("A+")
case 80...94:
    print("A")
case 70..<80:
    print("B")
case 60...:
    print("C")
case 50...:
    print("D")
case ..<50:
    print("F")
default:
    print("out of scope")
}

t = Password.Text("iloveyou")
t = Password.Pin(1234)
switch t {
case .Text(let txt):
    print(txt)
case .Pin(let pin):
    print(pin)
}

let point = (1, 10)
switch point {
case (0, 0):
    print("0,0")
case (1, let y):
    print("1, \(y)")
default:
    print("out of scope")
}

//For-In
let names = ["Bond", "Joke", "Tee"]
for na in names {
    print(na)
}

for i in 0...5 {
    print(i)
}

for i in 0..<names.count {
    print(names[i])
}

//While
var index = 0
while index < names.count {
    print(names[index])
    index += 1
}

//Repeat-While
index = 0
repeat {
    print(names[index])
    index += 1
} while index < names.count;

//Loop Label
l1: for i in 0...5 {
    l2: for _ in 0...i {
        print("*", terminator: "")
//        break l1
    }
    print("")
}

//Function
// () -> Void
func hello() {
    print("Hello World")
}

// (String, Int) -> Void
func hello(name: String, age: Int) {
    print("Hello \(name) age \(age)")
}

func hello(_ name: String, age: Int, gender: String = "male") {
    print("Hello \(name) age \(age) gender \(gender)")
}

func show(message text: String) {
    print(text)
}

func show(name: String) {
    
}

func diff(between a: Int, and b: Int) {
    
}

// (Int, Int) -> Int
func sum(a: Int, b:Int) -> Int {
    return a + b
}

func getStatus() -> (code: Int, message: String) {
    (200, "OK")
}

func avg(numbers: Double...) -> Double {
    var sum = 0.0
    for n in numbers {
        sum += n
    }
    return sum / Double(numbers.count)
}

func swap(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

diff(between: 10, and: 15)
hello(name: "Bond", age: 18)
hello("Bond", age: 18, gender: "male")
show(message: "Hello")
print(sum(a: 10, b: 20))
let bb = getStatus()
let cc = avg(numbers: 1,2,3,4,5)

var dd = 10
var ee = 20
swap(a: &dd, b: &ee)
print(dd)

//Function Type
var myFunction: (Int, Int) -> Int
myFunction = sum

typealias SumFunction = (Int, Int) -> Int

var myFunction2: SumFunction
myFunction2 = sum

print(myFunction(10, 20))

func add(_ a: Int, _ b: Int) -> Int {
    a + b
}

func sub(_ a: Int, _ b: Int) -> Int {
    a - b
}

func cal(_ a: Int, _ b: Int, _ c: (Int, Int) -> Int) -> Int {
    c(a, b)
}

var ff = cal(10, 20, add)
ff = cal(10, 20, sub)
print(ff)

//Closures
//{
//    (_ a: Int, _ b: Int) -> Int
//    in
//    a + b
//}

ff = cal(10, 20) { $0 + $1 }
print(ff)

var numbers = [1,2,3,4,5]
numbers.sort(by: { $0 > $1 } )
print(numbers)

func greet(_ function: () -> Void) {
    function()
}

greet {
    print("Hello World")
}

