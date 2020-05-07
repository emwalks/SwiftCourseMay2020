import UIKit

//conditionals

let age = 31

if age >= 18 {
    print("You can vote")
}

let greeting = "Hi there!"
let anotherGreeting = "Hi there!"

if greeting == anotherGreeting {
    print("EQUAL")
} else {
    print("NOT EQUAL")
}

let place = 2
if place == 1
{
    print("Gold medal")
}
else if place == 2
{
    print("Silver medal")
}
else
{
    print("Also ran")
}
let porridgeToHot = false

if porridgeToHot == false
{
    print("Eat porridge")
}
if !porridgeToHot
{
    print("Eat porridge")
}

let porridgeToCold = false

if !porridgeToCold && !porridgeToHot
{
    print("Eat porridge")
}
else
{
    print("Goldilocks is not happy")
}

let cash = false
let creditCard = true
if cash || creditCard
{
    print("I can top up my travel card")
}
else
{
    print("Can’t catch the train")
}

// switch
let secondPlace  = 2

switch secondPlace {
case 1: print("Gold")
    
case 2: print("Silver")
    
case 3: print("Bronze")
    
default: print("Took part")
    
}

// guard

let closureWithGuard = {
    (value :Int) -> Bool
    in
    guard value >= 2 else {print("Value is less than two"); return false}
    guard value >= 5 else {print("Value is less than five"); return false }
    print("Value is greater than or equal to five");
    return true
}

closureWithGuard(4)
closureWithGuard(5)

//ranges, intervals, strides

let ran = 1...6
ran.startIndex
ran.endIndex

let ran2 = 1..<6
ran2.startIndex
ran2.endIndex

let inter = 1.0...6
inter.contains(7)
inter.contains(3.14159)
inter.lowerBound
inter.upperBound

let inter2 = "a"..."f"
inter2.contains("e")
inter2.lowerBound
inter2.upperBound

let strideCon1 = stride(from: 2, through: 8, by: 2)
let strideCon2 = stride(from: 2, to: 8, by: 2)

Array(stride(from:0, through: 10, by: 2))
Array(strideCon1)
Array(stride(from:0, to: 10, by: 2))


Array(stride(from:0.0, to:1.0, by:0.1))


