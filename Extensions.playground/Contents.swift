import UIKit

//MARK:- Computed Property Extension
extension String {
    var asArray: [Character] {
        var result = [Character]()
        for character in self {
            result.append(character)
        }
        return result
    }
}
let chars = "Hello".asArray

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let alphabetChars = alphabet.asArray
let lowercaseAlphabet = alphabet.lowercased().asArray

//MARK:- Numeric example with type alias
typealias MPH = Double

extension MPH {
    var kmPerHour: Double {
        return self * 1.60934
    }
}

let speed: MPH = 60

let kmH = speed.kmPerHour

typealias Temperature = Double

extension Temperature {
    var asFahrenheit: Double {
        return (self * 9/5 ) + 32
    }
    var asKelvin: Double {
        return self + 273.15
    }
}

let celsius: Temperature = 100
let fahrenheit = celsius.asFahrenheit
let kelvin = celsius.asKelvin

//MARK:-Add a method to Int
extension Int {
    
    func repetition(closure: () -> ()) {
        for _ in 1...self {
            closure()
        }
    }
}
3.repetition{ print("I'm being repeated") }

let x = 10

x.repetition{ print("I'm also being repeated Again") }

struct Player {
    var score: Int = 0
    
    mutating func increaseScore() {
        score += 1
    }
    mutating func decreaseScore() {
        score -= 1
    }
}

var myPlayer = Player()
5.repetition { myPlayer.increaseScore() }
print(myPlayer.score)

//MARK:- Adding Subscript
extension String {
    subscript(index: Int) -> Character? {
        if !self.isEmpty && index < self.count && index >= 0
        {
            return self.asArray[index]
        }
        return nil
    }
}
let words = "May The Force Be With You"
let fifthChar = words[4]

struct Circle {
    var radius = 0.0
    var circumference: Double {
        return 2 * radius * .pi
    }
}
var circle1 = Circle()

circle1.circumference

circle1.radius = 10

circle1.circumference

var circle2 = Circle(radius: 5)

circle2.circumference

extension Circle {
    init(circumference: Double) {
        let radius = circumference / (2 * .pi)
        
        self.init(radius: radius)
    }
}
let circle3 = Circle(circumference: 20)
circle3.radius
circle3.circumference

// Rounding to a number of decimal places

let anx = 1.23556789

let ay = Double(round(1000*anx)/1000)

print(ay)

let az = Double(round(100*anx)/100)

class Person {
    var fullName: String
    init(fullName: String) {
        self.fullName = fullName
    }
}
let person1 = Person(fullName: "Luke Skywalker")

extension Person {
    convenience init(firstName: String , lastName: String) {
        let fullName = firstName + " " + lastName
        self.init(fullName: fullName)
    }
}

let person2 = Person(firstName: "Han", lastName: "Solo")
enum StarWars : String {
    case LukeSkywalker = "Luke Skywalker"
    case HanSolo = "Han Solo"
    case Yoda = "Yoda"
    case ObiWanKenobi = "Obi-Wan Kenobi"
    case DarthVader = "Darth Vader"
    case Palpatine = "Palpatine"
    case BobaFett = "Boba Fett"
    case DarthMaul = "Darth Maul"
}
let starWarsCharacter = StarWars.DarthMaul
switch starWarsCharacter {
case .LukeSkywalker:
    print("The character is Luke Skywalker")
    
case .HanSolo:
    print("The character is Han Solo")
    
case .DarthMaul:
    print("The character is Darth Maul")
    
default:
    print("The character is other")
}
extension StarWars {
    enum StarWarsType{
        case Rebels, Republic
    }
    
    var type: StarWarsType {
        switch self {
        case .LukeSkywalker, .HanSolo, .Yoda, .ObiWanKenobi:
            return .Rebels
        default:
            return .Republic
        }
    }
}
switch starWarsCharacter.type {
case .Rebels:
    print("\(starWarsCharacter.rawValue) is member of the rebels")
case .Republic:
    print("\(starWarsCharacter.rawValue) is member of the republic")
}
