import UIKit

var str = "Hello, playground"

// MARK:- Inheritance
class Person1 {
    func whatDoIDo() {
        print("I am an instance of type: \(self)")
        print("I perform general tasks")
    }
}


class Engineer1: Person1
{
}

let engineer1 = Engineer1()

engineer1.whatDoIDo()

class Person2 {
    func whatDoIDo() {
        print("I am an instance of type: \(self)")
        self.specificTask()
    }
    
    func specificTask() {
        print("I perform general tasks")
    }
}


class Engineer2: Person2 {
    override func specificTask() {
        print("I fix computers")
    }
}

let engineer2 = Engineer2()
engineer2.whatDoIDo()

class Person3 {
    func whatDoIDo() {
        print("I am an instance of type: \(self)")
        self.specificTask()
    }
    
    func specificTask() {
        print("I perform general tasks")
    }
}

class Engineer3: Person3 {
    override func specificTask() {
        print("I fix computers")
    }
}

class Trainer3: Person3 {
    override func specificTask() {
        print("I train people")
    }
}

let engineer3 = Engineer3()
engineer3.whatDoIDo()
let trainer3 = Trainer3()
trainer3.whatDoIDo()
let allPeople: [Person3] = [Trainer3(), Engineer3(), Engineer3()]
func processPeople(allPeople: [Person3]) {
    print("Executing: \(#function)")
    for person in allPeople {
        person.whatDoIDo()
    }
}
processPeople(allPeople: allPeople)

//MARK:- PROTOCOLS

protocol Person {
    func WhatDoIDo()
    func specificTask()
}

extension Person {
    func WhatDoIDo() {
        print("I am an instance of type: \(self)")
        self.specificTask()
    }
}
struct Trainer { }

extension Trainer: Person {
    func specificTask() {
        print("I fix computers")
    }
}

struct Engineer { }

extension Engineer: Person {
    func specificTask() {
        print("I train people")
    }
}

func processPeople2(allPeople: [Person]) {
    for person in allPeople {
        person.specificTask()
        print("")
    }
}

let variousPeople: [Person] = [Trainer(), Engineer(), Trainer(), Engineer()]

processPeople2(allPeople: variousPeople)

protocol Sales {
    func sell()
}
struct AllRounder { }
extension AllRounder: Person {
    func specificTask() {
        print("I do everththing")
    }
    
}
extension AllRounder: Sales {
    func sell() {
        print("I am selling")
    }
    
}
let salesPerson = AllRounder()
salesPerson.specificTask()
salesPerson.sell()
protocol RacingCar {
    var teamName: String { get }
    var canRace: Bool { get }
}
protocol GrandPrix {
    var homeCircuit:  String { get }
    var f1Memember: Bool { get }
}
extension RacingCar where Self: GrandPrix  {
    var canRace: Bool { return true }
    
}
protocol Container {
    associatedtype ItemType
    mutating func push(item: ItemType)
    mutating func pop() -> ItemType
}
struct Stack: Container {
    
    typealias ItemType = Int
    var items = [ItemType]()
    
    mutating func push(item: ItemType) {
        items.append(item)
    }
    mutating func pop() -> ItemType {
        return items.removeLast()
    }
}
var myObjects = Stack()
myObjects.push(item: 5)
myObjects.push(item: 10)
myObjects.pop()
