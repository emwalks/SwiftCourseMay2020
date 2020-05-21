import UIKit

// MARK: - Default Params

struct Resolution {
    var width: Int = 0
    var height: Int = 0
}
let video = Resolution()

let vga = Resolution(width: 640, height: 480)

// MARK: - Inits

class Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}
var temp = Fahrenheit()
print(temp.temperature)

temp.temperature = 40.0
print(temp.temperature)

class Person {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let luke = Person(name: "Luke", age: 35)

// MARK: -  Multiple Inits

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
let freezing = Celsius(fromKelvin: 273.15)

// MARK: - Convenience Inits

class Message {
    var sender: String
    var recipient: String
    var timeStamp: NSDate
    
    init (sender: String, recipient: String){
        self.sender = sender
        self.recipient = recipient
        self.timeStamp = NSDate()
    }
    
    convenience init(sender: String) {
        self.init(sender:sender, recipient: sender)
    }
}


let message1 = Message(sender: "Richard", recipient: "Peter")
print(message1.recipient)
let message2 = Message(sender: "Richard")
print(message2.recipient)

struct Size {
    var width = 0.0,
    height = 0.0
}

struct Point {
    var x = 0.0,
    y = 0.0
}

class Rect {
    var origin = Point()
    var size = Size()
    init() { }
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    convenience init(center: Point , size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX , y: originY), size: size)
    }
}

let defInstance = Rect()

let explicitInstance = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 5.0, height: 5.0))

let convenienceInstance = Rect(center: Point(x: 2.5, y: 2.5), size: Size(width: 5.0, height: 5.0))

let basicRect = Rect()

let originRect = Rect(origin: Point(x: 2, y: 2), size: Size(width: 5, height: 5))

let centreRect = Rect(center: Point(x: 4, y: 4), size: Size(width: 3, height: 3))

// MARK: -  Failable Inits

struct Character {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

let someCharacter = Character(name: "Han")

if let character = someCharacter {
    print("We have a character instance of \(character.name)")
} else {
    print("We do not have a character instance")
    
}

let someOtherCharacter = Character(name: "")

if let character = someOtherCharacter {
    print("We have a character instance of \(character.name)")
} else {
    print("We do not have a character instance")
    
}
