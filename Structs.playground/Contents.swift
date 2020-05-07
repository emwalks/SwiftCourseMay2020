import UIKit

import Foundation

var str = "Hello, playground"

struct Person {
    var age: Int
    var name: String
    var weight:Double
    var height:Double
}

var newPerson = Person(age: 0, name: "", weight: 0, height: 0)

var anotherPerson = Person( age: 40, name: "Burt", weight: 75 , height: 100)

newPerson.age = 35
newPerson.name = "Fred"
newPerson.weight = 66
newPerson.height = 102

print("The person’s age is \(newPerson.age)")
print("The person’s name is \(newPerson.name)")
print("The person’s weight is \(newPerson.weight)")
print("The person’s height is \(newPerson.height)")

struct Person1 {
    
    var age = 0
    var name = ""
    var weight = 0.0
    var height = 0.0
    
    func bmi() -> Double
    {
        return weight / (height * height)
    }
}

var newPerson1 = Person1()
newPerson1.weight = 250
newPerson1.height = 1000
let bmi = newPerson1.bmi()

var newPerson3 = Person( age: 40, name: "Burt", weight: 75 , height: 100)

var otherPerson = newPerson3
otherPerson.weight = 60
print(newPerson3.weight)
print(otherPerson.weight)

struct Point {
    var x = 0
    var y = 0
    
    mutating func moveByX ( deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}
var myPoint = Point()
myPoint.moveByX(deltaX: 10, y: 20)
print(myPoint)
