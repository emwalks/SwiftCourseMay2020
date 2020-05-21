import UIKit

class Tyre {
    var manufacturer: String
    var rimSize: String
    
    init(manufacturer: String, rimSize: String){
        self.manufacturer = manufacturer
        self.rimSize = rimSize
    }
}

class Engine {
    var fuel: String
    var cylinders: Int
    
    init(fuel: String, cylinders: Int) {
        self.fuel = fuel
        self.cylinders = cylinders
    }
}

class PerformService {
    var service: Bool = false
    init(){
        print("Service has been performed")
        service = true
    }
}

class Upgrades {
    var alarmUpgrade: Bool?
    var rearCamera: Bool?
    var heatedSeats: Bool?
}

class Car {
    var manufacturer: String
    var model: String
    var colour: String
    var tyres: Tyre
    var carEngine: Engine
    lazy var service = PerformService()
    var upgrades: Upgrades?
    
    init(manufacturer: String, model: String, colour: String) {
        self.manufacturer = manufacturer
        self.model = model
        self.colour = colour
        self.tyres = Tyre(manufacturer: "Bridgestone", rimSize: "R17")
        self.carEngine = Engine(fuel: "Petrol" , cylinders: 12)
    }
}

var myCar = Car(manufacturer: "Aston Martin", model: "Vanquish", colour: "Green")

myCar.model

myCar.tyres.rimSize

myCar.tyres.manufacturer = "Michelin"

myCar.tyres.rimSize = "R19"

myCar.tyres = Tyre(manufacturer: "Goodyear", rimSize: "R21")

myCar.carEngine.cylinders

var myOtherCar = Car(manufacturer: "Aston Martin", model: "Vanquish", colour: "Black")

myOtherCar.service

myOtherCar

myOtherCar.upgrades

myOtherCar.upgrades?.alarmUpgrade

myOtherCar.upgrades = Upgrades()

myOtherCar.upgrades
myOtherCar.upgrades?.alarmUpgrade = true

myOtherCar.upgrades?.alarmUpgrade

struct LevelTracker {
    
    var currentLevel = 1
    
    static var highestUnlockedLevel = 1
    
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level: level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

var emsLevel = LevelTracker()
emsLevel.currentLevel
emsLevel.currentLevel = 2
