import UIKit

let emergency = "999"
let emergencyNumber = Int(emergency)

let Aemergency = "A999"
let AemergencyNumber = Int(emergency)

let place: Int? = nil

if place != nil {
    print(place!)
}

if let finishPlace  =  place
{
    print("This competitor’s place was \(finishPlace)")
    
}
else
{ print("This competitor didn’t finish") }


// Defining your own Optional
let place1: Int?
place1 = nil

// Implicitly Unwrapped Optionals
let place2: Int? = 33
print(place2!)

let place3: Int! = 33
print(place3)

if place3 != nil {
    print(place3)
}

if let finishPlace =  place3 {
    print(finishPlace)
}
// not much use
let place4:Int? = nil
// gives wrong result
switch place4 {
    
case let position:
    print("You ran the race")
    
default:
    print("Didn't finish")
}
// the fix
switch place4 {
    
case let position where position == 1:  print("You Won")
    
case let position where position == 2:  print("You came second")
    
case let position where position == 3:  print("You came third")
    
case let position? where position >= 4:  print("Also ran")
    
default:  print("Didn't finish")
}
// ?? Nil coalescing
let opVar:Int? = nil
print(opVar)    // prints nil
print(opVar ?? 0)  // prints 0

//let addedOp = 1 + opVar ?? 0  // gives an error
let addedOp = 1 + (opVar ?? 0)  // returns 1

// first and last
let numList = [1,2,3,4,5,6]
numList.first  // returns 1
numList.last  // returns 6

let empty = [Int]()
empty.first  // returns nil
empty.last  // returns nil

empty.dropFirst()

// what's an array slice?

let myArray = [1, 2]
ArraySlice(myArray)
myArray.dropFirst()
