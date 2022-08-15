//Chain of Responsibility
//MessageProcessor Demo

protocol Message {
    var id: Int { get }
}

protocol MessageProcessor {
    init(next: MessageProcessor?)
    func process(message: Message)
}

struct OrderMessage: Message {
    var id: Int
}

struct OrderProcessor: MessageProcessor, CustomStringConvertible {
    var description: String { "OrderProcessor" }
    
    let nextProcessor: MessageProcessor?
    
    init(next: MessageProcessor?) {
        nextProcessor = next
    }
    
    func process(message: Message) {
        print("\(message) process by \(self)")
        nextProcessor?.process(message: message)
    }
}

struct PaymentProcessor: MessageProcessor, CustomStringConvertible {
    var description: String { "PaymentProcessor" }
    
    let nextProcessor: MessageProcessor?
    
    init(next: MessageProcessor?) {
        nextProcessor = next
    }
    
    func process(message: Message) {
        if message.id == 2 {
            print("\(message) payment failed")
            return
        }
        print("\(message) process by \(self)")
        nextProcessor?.process(message: message)
    }
}

struct ShippingProcessor: MessageProcessor, CustomStringConvertible {
    var description: String { "ShippingProcessor" }
    
    let nextProcessor: MessageProcessor?
    
    init(next: MessageProcessor?) {
        nextProcessor = next
    }
    
    func process(message: Message) {
        print("\(message) process by \(self)")
        nextProcessor?.process(message: message)
    }
}

struct CompleteProcessor: MessageProcessor, CustomStringConvertible {
    var description: String { "CompleteProcessor" }
    
    let nextProcessor: MessageProcessor?
    
    init(next: MessageProcessor?) {
        nextProcessor = next
    }
    
    func process(message: Message) {
        print("\(message) process by \(self)")
        nextProcessor?.process(message: message)
    }
}
