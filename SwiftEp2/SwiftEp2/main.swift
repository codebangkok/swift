import Darwin

var a = HumanClass()
a.name = "Bond"

var b = HumanClass(name: "Bond")
//b.firstName = "Surasuk"
//b.lastName = "Oakkharaamonphong"
b.fullName = "Surasuk Oakkharaamonphong"
//print(b.fullName)
//b.speak()

var c = HumanClass(name: "Bond")
var e = c
e.name = "Tee+"
//print(c.name)
//print(e.name)
//print(Unmanaged.passUnretained(c).toOpaque())
//print(Unmanaged.passUnretained(e).toOpaque())

var d = HumanStruct(name: "Joke")
var f = d
f.name = "Ohm"
//print(d.name)
//print(f.name)

var g = HumanExtend(name: "Bond")
//g.walk()

var h = HumanStruct(name: "Joke")
//h.walk()

var i = IronmanStruct(name: "Bond")
var j = SpidermanStruct(name: "Joke")

//i.fly()
//j.shoot()

var k: HumanClass = IronmanClass(name: "Bond")

var avengersClass: [HumanClass] = [
    IronmanClass(name: "Bond"),
    SpidermanClass(name: "Joke")
]

//for avenger in avengersClass {
//    avenger.action()
//}

var avengersStruct: [ActionProtocol] = [
    IronmanStruct(name: "Bond"),
    SpidermanStruct(name: "Joke")
]

//for avenger in avengersStruct {
//    avenger.action()
//}

let complete = CompleteProcessor(next: nil)
let shipping = ShippingProcessor(next: complete)
let payment = PaymentProcessor(next: shipping)
let order = OrderProcessor(next: payment)

var order1 = OrderMessage(id: 1)
var order2 = OrderMessage(id: 2)

//order.process(message: order1)
//order.process(message: order2)


//Error Handling
enum SearchStatus: Error {
    case NotFound
    case InvalidRequest
}

func search(text: String?) throws -> String {
    let names: Set = ["bond", "joke", "tee+"]
    
    guard let text = text else {
        throw SearchStatus.InvalidRequest
    }
    
    guard names.contains(text) else {
        throw SearchStatus.NotFound
    }
    
    return text
}

do {
    let result = try search(text: "kim")
    print(result)
} catch SearchStatus.NotFound {
    print("ค้นหาไม่เจอ")
} catch SearchStatus.InvalidRequest {
    print("กรุณาใส่คำค้นหา")
} catch {
    print("ไม่รู้ ไม่รู้ ไม่รู้")
}

if let result = try? search(text: "bond") {
    print(result)
}
