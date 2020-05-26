//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"


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
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level: level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}



class Player {
    var tracker = LevelTracker()
    let playName: String
    
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level: level + 1)
        tracker.advanceToLevel(level: level + 1)
    }
    
    init(name: String) {
        playName = name
    }
}



var player1 = Player(name: "Han")
player1.completedLevel(level: 1)
print("Highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")



var player2 = Player(name: "Luke")
if player2.tracker.advanceToLevel(level: 6) {
    print("Player 2 is now on level 6")
} else {
    print("Level 6 is has not yet been unlocked")
}













