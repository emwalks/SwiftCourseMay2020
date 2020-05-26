//: Playground - noun: a place where people can play

//import UIKit

var str = "Hello, playground"


func add(a: Int, b: Int) -> Int {
    return a + b
}

var sum = add(a: 5, b: 8) // sum = 13

let sequence = 1...5

var result = sequence.map { add(a: $0, b: 2) } // y = [3, 4, 5, 6, 7]

print(result)



func curriedAdd(a: Int) -> (_ b: Int) -> Int {
    return { b in a + b }
}


sum = curriedAdd(a: 5)(8)

let addFour = curriedAdd(a: 4)

result = sequence.map(addFour)

print(result)



class BankAccount {
    var balance: Double = 0.0
    
    func deposit(amount: Double) {
        balance += amount
    }
}



let account = BankAccount()
account.deposit(amount: 100)



let depositor = BankAccount.deposit
depositor(account)(100)
print(account.balance)



struct Logger {
    
    enum Level: Int, CustomStringConvertible {
        case debug = 3
        
        case warn =  2
        
        case error = 1
        
        case none = 0
        
        var description: String {
            switch(self) {
            case .debug:
                return "Debug"
            case .warn:
                return "Warning"
            case .error:
                return "Error"
            case .none:
                return ""
            }
        }
    }
    
    static func log (level: Level) -> (_ name: String) ->  (_ message: String) -> String
    {
        return { (name: String)  in
            return { (message: String) -> String in
                if level.rawValue > 0 {
                    return "\(level.description): \(name) - \(message)"
                }
                return ""
            }
        }
    }
    
    
    static var debug = Logger.log(level: .debug)
    
    static var warn = Logger.log(level:.warn)
    
    static var error = Logger.log(level:.error)
}


Logger.log(level: .debug)("Product 1")("System crash")

Logger.warn("Product 2")("Wont start")




let myLog = Logger.error("Product 3")
myLog( "Invalid data")





