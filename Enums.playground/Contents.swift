import UIKit

enum TravelClass {
    case First
    case Business
    case Economy
    case EconomyPlus
}

let mySeat = TravelClass.Business

let myJourney = TravelClass.First

switch myJourney {
case .First:
    print("Champagne")
case .Business:
    print("Vino")
case .EconomyPlus:
    print("Lager")
case .Economy:
    print("Water")
}

enum TravelPoints: Int {
    case First = 100
    case Business = 50
    case Economy = 25
    case EconomyPlus = 1
}

if let myPoints = TravelPoints(rawValue: 50) {
    switch myPoints {
    case .First:
        print("Champagne")
    case .Business:
        print("Vino")
    case .EconomyPlus:
        print("Lager")
    case .Economy:
        print("Water")
    }
}

enum AtomicNumber: Int {
    case Hydrogen = 1, Helium, Lithium, Beryllium, Boron, Carbon, Nitrogen, Oxygen, Fluorine, Neon
}
enum Insect{
    enum Dangerous{
        case Bite
        case Sting
        case Harmless
    }
    
    case Bee
    case Wasp
    case Horsefly
    case Bluebottle
}
let anInsect = Insect.Wasp
let shouldIRun = Insect.Dangerous.Sting

enum Colours {
    case RGB( Int , Int , Int )
    case CMYK ( Int , Int , Int , Int )
}

let myRGB = Colours.RGB( 100, 100, 100)
let myCMYK = Colours.CMYK( 255, 255, 0, 0)

switch myRGB {
case .RGB(let redMix, let greenMix, let blueMix):
    print("The red mix is \(redMix)")
    print("The green mix is \(greenMix)")
    print("The blue mix is \(blueMix)")
default: print("not working")
}




