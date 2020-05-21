import UIKit

var str = "Hello, playground"

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
            
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()

stepCounter.totalSteps = 200
stepCounter.totalSteps = 300
stepCounter.totalSteps = 400

var onlyEven: Int = 0 {
    didSet {
        if onlyEven % 2 != 0 {
            onlyEven += 1
        }
    }
}

onlyEven = 1
onlyEven
onlyEven = 4
onlyEven
onlyEven = 7
onlyEven




class Vehicle {
    var speed: Int
    var speedLimit: Int
    {
        willSet {
            print("Preparing to change speed to \(newValue) MPH")
        }
        didSet {
            let changeSpeed: () -> () = (speed > speedLimit) ? slowdown : speedup
            
            while speed != speedLimit {
                changeSpeed()
            }
            
            print("Now I'm driving \(speed) MPH because the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH\n")
        }
    }
    
    init(speedLimit: Int, speed: Int) {
        self.speedLimit = speedLimit
        self.speed  = speed
        print("Speed limit is \(speedLimit) MPH, I'm driving: \(speed) MPH")
    }
    
    func speedup() {
        speed += 1
        print("Speeding up to \(speed)")
    }
    
    func slowdown() {
        speed -= 1
        print("Slowing up to \(speed -= 1)")
    }
    
}
let car = Vehicle(speedLimit: 50, speed: 50)
car.speedLimit = 90

car.speedLimit = 40
