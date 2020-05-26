//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

func addTwo(a:inout Int){
    
    a = a * 2
    
}

var refVal = 2

addTwo(a: &refVal)

print(refVal)



func addOpt(passedInt1:Int?, passedInt2:Int)->Int?{
    if let returnedValue = passedInt1 {
        return (returnedValue + passedInt2)
    }
    else {
        return nil
    }
}



if let result = addOpt(passedInt1: nil, passedInt2: 3){
    print("had a result \(result)")
}
else {
    print("had a nil")
}

if let result = addOpt(passedInt1: 5, passedInt2: 3){
    print("had a result \(result)")
}
else {
    print("had a nil")
}

func retOpt1(passedValue:String?)->String?{
    if let returnedValue = passedValue {
        return returnedValue
    }
    else {
        return nil
    }
}

if let result = retOpt1(passedValue: nil){
    print("had a result \(result)")
}
else {
    print("had a nil ")
}

if let result = retOpt1(passedValue:"woohoo"){
    print("had a result \(result)")
}
else {
    print("had a nil ")
}


//Sort the characters in a string
let sortAlpha = "ghgddry".sorted{$0 < $1}
print(sortAlpha)

// Sort the elements in an array
let numbers = [5, 3, 7, 8, 2, 4, 9]
let sortNum = numbers.sorted {$0 < $1}
print(sortNum)



//Square all the numbers within an array

let mapNum = numbers.map( {$0 * $0} )
print(mapNum)



// Filter out the even numbers only odd numbers remain

let filtNum = numbers.filter( {$0%2 == 1} )
print(filtNum)





// Keep adding the elements of an array together until you are left with one item

let redNum = numbers.reduce(0)  { $0 + $1 }
print(redNum)



postfix operator %

postfix func % (percentage: Int) -> Double
{
    return (Double(percentage) / 100)
}

print(5%)



prefix operator %

prefix func % (percentage: Double) -> Int
{
    return (Int(percentage * 100))
}

print(%0.05)


// prove that the prefix and postfix % operators are each other inverse

print(%(5%))

print((%5)%)

precedencegroup MyPrecedenceGroup {
    associativity: left
    higherThan: AdditionPrecedence
}


infix operator %% : MyPrecedenceGroup

func %% (part: Double, whole: Double) -> String
{
    return "\(part/whole * 100)%"
}

print(60%%120)




func addTwoNumbers(first:Int, second:Int)->Int{
    return first + second
}

func addTwoNumbers(first:Double, second:Double)->Double{
    return first + second
}

print(addTwoNumbers(first: 5,second: 8))

print(addTwoNumbers(first: 7.2,second: 8.4))

class Something {
    
    final func doNotOverride(){
        print("I can't be overridden")
    }
    
    func doSomething () {
        print("I did something")
    }
}

var myClass = Something()

myClass.doSomething()





class SubSomething:Something {
    
    override func doSomething () {
        print("I did something else")
    }
    
    //override    func doNotOverride(){
    //        print("I can't be overridden”)
    //    }
    
}

var mySubClass = SubSomething()

mySubClass.doSomething()
mySubClass.doNotOverride()










