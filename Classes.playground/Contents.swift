import UIKit

class Person {
    var age = 0
    var name = ""
    var weight = 0.0
    var height = 0.0
}

var newPerson = Person()

newPerson.age = 35
newPerson.name = "Fred"
newPerson.weight = 66
newPerson.height = 102

class Person2 {
    var age = 0
    var canVote: Bool {
        get {
            if age >= 18 { return true }
            else { return false }
        }
    }
}

var voter = Person2()
voter.canVote
voter.age = 21
voter.canVote

let voter2 = voter
if voter === voter2
{
    print("they are the same")
}


class Pedometer {
    var steps = 0
    func increment ( ) {
        steps += 1
    }
    func incrementBy(amount: Int) {
        steps += amount
    }
    func reset ( ) {
        steps = 0
    }
    func incrementBy(amount: Int,  numberOfTimes: Int) {
        steps += amount * numberOfTimes
    }
}

let mySteps = Pedometer( )

mySteps.increment( )
mySteps.incrementBy(amount: 253)
mySteps.reset( )
mySteps.incrementBy(amount:15 , numberOfTimes: 3)


class Person3 {
    var age: Int
    var name: String
    var weight: Double
    var height: Double
    init() {
        age = 20
        name = "John"
        weight = 100.0
        height = 2.0
    }
}

var john = Person3()


class Celsius {
    var temperatureInCelsius: Double = 0.0
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boiling = Celsius(fromFahrenheit: 212.0)
let boilingInK = Celsius(fromKelvin: 373.15)

let freezing = Celsius(fromKelvin: 273.15)


class TopPerson {
    var name:String
    var address:String
    var phoneNumber:Int
    init( ) {
        name = ""
        address = ""
        phoneNumber = 0
    }
}

class Employee:  TopPerson {
    var employeeNumber:Int
    var salary:Double
    override init( ) {
        employeeNumber = 0
        salary = 0.0
        super.init( )
    }
}
class Founder: Employee {
    var shares:Int
    override init( ) {
        shares = 1000000
        super.init( )
        employeeNumber = 1
        salary = 1000000.0
        name = "Jane"
    }
}
var jane = Founder()
