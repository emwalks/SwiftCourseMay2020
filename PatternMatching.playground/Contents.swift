import UIKit

let value = 1

switch value {
case 1: print("one")
case 2: print("two")
case 3:  print("three")
default: print("some other number")
}

let county = "SRY"
switch county {
case "SRY": print("Surrey")
case "SXW": print("West Sussex")
case "DEV": print("Devon")
case "CON": print("Cornwall")
default: print("Other English County")
}


let age = 31

switch age {
case 0...9: print("under 10")
case 10...99: print("10-99")
case 100..<1000: print ("100-999")
default: print("negative or > 1000")
}

let character = ("Yoda", 700)

switch character {
case ("Yoda", let age):
    print("You are Yoda, and you are \(age) years old")
case (_, 30...39):
    print("You are not Yoda and are in your thirties")
case ("Luke", _):
    print("Luke I am your Father")
case (_, _):
    print("You are not a Jedi")
}

//case (_, _):
//this is like the default

let myTuple = ("Emma", 31)

switch myTuple {
case let (x, y):
    print("the string 'x' is \(x), the integer 'y' is \(y)")
}

var myVar: String?

//the variable assigning is only available within the scope of the switch?
switch myTuple {
case (myVar, let y):
    print("the string 'x' is \(myVar), the integer 'y' is \(y)")
default: break
}

print(myVar)

//parsing enums

enum Compass {
    case North, South, West, East
}

let myDirection = Compass.West

switch myDirection {
case .North: print("you are heading north")
case .South: print("you are heading south")
case .West: print("you are heading west")
case .East: print("you are heading east")
}

enum ParseResult {
    case Coordinates(Int, Int)
    case Error(String)
}

let result = ParseResult.Coordinates(12, 15)

switch result {
case let .Coordinates(x, y):
    print("Successful parse. Coords are (\(x), \(y)).")
case .Error(let err):
    print("Failed parse. Error is \(err)")
}

let aTuple = (100, 200)

switch aTuple {
case let (x, y) where x > y:
    print("\(x) is bigger than \(y)")
case let (x, y) where x == y:
    print("\(x) is equal to \(y)")
case let (x, y) where x < y:
    print("\(x) is smaller than \(y)")
default:
    print("none of them")
}

//let colour:UIColor! = UIColor.blackColor()

enum UKColour:String{
    
    case red = "Red"
    case blue = "Blue"
    case yellow = "Yellow"
    case green = "Green"
    case clear = "Clear"
    
    static func redColour()->String
    {
        return UKColour.red.rawValue
    }
    static func blueColour()->String
    {
        return UKColour.blue.rawValue
    }
    static func yellowColour()->String
    {
        return UKColour.yellow.rawValue
    }
    static func greenColour()->String
    {
        return UKColour.green.rawValue
    }
    static func clearColour()->String
    {
        return UKColour.clear.rawValue
    }
}

let test = UKColour.redColour()
print(test)

let colourName = "blue"
let colour : String = {
    switch colourName {
    case "red": return UKColour.redColour()
    case "green": return UKColour.greenColour()
    case "blue": return UKColour.blueColour()
    case "yellow": return UKColour.yellowColour()
    default: return UKColour.clearColour()
    }
}()
print(colour)

let colour1 : String = {
    switch $0 {
    case "red": return UKColour.redColour()
    case "green": return UKColour.greenColour()
    case "blue": return UKColour.blueColour()
    case "yellow": return UKColour.yellowColour()
    default: return UKColour.clearColour()
    }
}("blue")

print(colour1)

enum UIColourLookup:String{
    
    case red = "Red"
    case blue = "Blue"
    case yellow = "Yellow"
    case green = "Green"
    case white = "White"
    
    static func redColour()->String
    {
        return UIColor.red.description
    }
    static func blueColour()->String
    {
        return UIColor.blue.description
    }
    static func yellowColour()->String
    {
        return UIColor.yellow.description
    }
    static func greenColour()->String
    {
        return UIColor.green.description
    }
    static func whiteColour()->String
    {
        return UIColor.white.description
    }
}

let myColour : String = {
    switch $0 {
    case "red": return UIColourLookup.redColour()
    case "green": return UIColourLookup.greenColour()
    case "blue": return UIColourLookup.blueColour()
    case "yellow": return UIColourLookup.yellowColour()
    default: return UIColourLookup.whiteColour()
    }
}("green")
