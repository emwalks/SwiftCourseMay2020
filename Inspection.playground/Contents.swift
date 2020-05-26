//: Playground - noun: a place where people can play

//import UIKit

var str = "Hello, playground"


class Employee {
    var department:String
    init(department:String){
        self.department = department
    }
}

class Trainer:Employee {
    var name:String
    init(department:String, name:String){
        self.name = name
        super.init(department:department)
    }
}

class Engineer:Employee {
    var name:String
    init(department:String, name:String){
        self.name = name
        super.init(department:department)
    }
}


var payroll = [
    Trainer(department: "Training", name: "Richard"),
    Trainer(department: "Training", name: "Daryl"),
    Trainer(department: "Training", name: "Russell"),
    Engineer(department: "Workshop", name: "Harry"),
    Engineer(department: "Workshop", name: "John")
]


for employee in payroll
{
    if employee is Trainer {
        print("Trainer found")
    }
    else if employee is Engineer {
        print("Engineer found")
    }
}

for employee in payroll
{
    if employee is Trainer {
        let trainer = employee as! Trainer
        print("Trainer \(trainer.name) found")
        
    }
    else if employee is Engineer {
        let engineer = employee as! Engineer
        print("Engineer \(engineer.name) found")
    }
}

for employee in payroll
{
    if let trainer = employee as? Trainer {
        
        print("Trainer \(trainer.name) found")
        
    }
    else if let engineer = employee as? Engineer {
        
        print("Engineer \(engineer.name) found")
    }
}





for employee in payroll
{
    switch employee{
    case let trainer as Trainer:
        print("Trainer \(trainer.name) found")
    case let engineer as Engineer:
        print("Engineer \(engineer.name) found")
    default:
        print("must be an employee who is not an Engineer or Trainer")
    }
}


class Freelance {
    var name:String
    init(name:String){
        self.name = name
    }
}

var staff = payroll as [AnyObject]

staff.append(Freelance(name: "Peter"))

//payroll.append(Freelance(name: "Peter"))

func myFuncA(num:Int) -> (Int, Int) { return (num, num)}

func myFuncB(num:Int) -> Int {return num}

func testFuncType<T>(passedFunc:T)
{
    switch passedFunc{
    case is (Int)->Int: print("is (Int)->Int")
    case is (Int)->(Int, Int): print("is (Int)->(Int, Int)")
    default: print("none of them")
    }
}
testFuncType(passedFunc: myFuncA)   // prints "is (Int)->(Int, Int)”

testFuncType(passedFunc: myFuncB)  // prints "is (Int)->Int"








