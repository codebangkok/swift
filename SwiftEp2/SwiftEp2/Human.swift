class HumanClass {
    //store property
    var name: String
    var firstName: String?
    var lastName: String?
    
    //compute property
    var fullName: String {
        get {
            guard let firstName = firstName else {
                return ""
            }

            guard let lastName = lastName else {
                return firstName
            }
            
            return "\(firstName) \(lastName)"
        }
        
        set {
            let names = newValue.split(separator: " ")
            
            guard names.count >= 1 else {
                return
            }
            
            firstName = String(names[0])
            
            guard names.count >= 2 else {
                return
            }
            
            lastName = String(names[1])
        }
    }
    
    //Constructor
    init() {
        name = ""
    }
    
    init(name: String) {
        self.name = name
    }
    
    func speak() {
        print("\(name) speaking...")
    }
        
    func action() {
        print("\(name) no action")
    }
}

//Inheritance
class HumanExtend: HumanClass {
    func walk() {
        print("\(name) walking...")
    }
}

class IronmanClass: HumanExtend {
    func fly() {
        print("\(name) flying...")
    }
    
    override func action() {
        fly()
    }
}

class SpidermanClass: HumanExtend {
    func shoot() {
        print("\(name) shotting...")
    }
    
    override func action() {
        shoot()
    }
}


//Protocol (Interface)
protocol HumanProtocol {
    var name: String { get set }
    var firstName: String? { get set }
    var lastName: String? { get set }
    func speak()
    func walk()
}

extension HumanProtocol {
    func speak() {
        print("\(name) speaking...")
    }
    
    func walk() {
        print("\(name) walking...")
    }
}

protocol IronmanProtocol: HumanProtocol {
    func fly()
}

protocol SpidermanProtocol: HumanProtocol {
    func shoot()
}

protocol ActionProtocol {
    func action()
}

//Adopt and Conform
struct HumanStruct: HumanProtocol {
    var name: String
    var firstName: String?
    var lastName: String?
}

struct IronmanStruct: IronmanProtocol {

    var name: String
    var firstName: String?
    var lastName: String?
    
    func fly() {
        print("\(name) flying...")
    }
    
}

struct SpidermanStruct: SpidermanProtocol {
        
    var name: String
    var firstName: String?
    var lastName: String?
    
    func shoot() {
        print("\(name) shooting...")
    }
    
}

extension IronmanStruct: ActionProtocol {
    func action() {
        fly()
    }
}

extension SpidermanStruct: ActionProtocol {
    func action() {
        shoot()
    }
}
