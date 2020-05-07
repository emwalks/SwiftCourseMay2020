import UIKit

import Foundation
var str = "Hello, playground"
let aClosure = {
    ( ) -> ( )
    in
    print("Hi there!")
}
aClosure()
let aClosure2 = {
    print("Hi there!")
}
aClosure2()
let aClosure3 = {
    (stringParam:String) -> ( )
    in
    print("Hi there \(stringParam)")
}
aClosure3("Peter")
let number1 = 1, number2 = 2
let result = number1 > number2 ? number1: number2
let max = {
    ( number1:Int , number2:Int ) -> Int
    in
    return number1 > number2 ? number1: number2
}
print("Max of 12 , 4 is \(max(12, 4))")
// Variadic Parameters
let averageOfNums  = {
    (numbers: Double...) -> Double
    in
    return numbers.reduce( 0, {$0 + $1}) / Double(numbers.count)
}
averageOfNums(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
averageOfNums(1, 2, 3, 4, 5, 6, 7)
averageOfNums(13,4,5,6)
let helloGraham = {
    () -> String
    in
    return "Hello Graham"
}
let helloSarah = {
    () -> String
    in
    return "Hello Sarah"
}
let saySomething = {
    (passedFunction: () -> String) ->(String)
    in
    return "Result: \(passedFunction())"
}
print(saySomething(helloGraham))
saySomething(helloSarah)
let addInts = {
    (numbers: Int...) -> Int
    in
    return numbers.reduce(0, {$0 + $1})
}
let multInts = {
    (numbers: Int...) -> Int
    in
    return numbers.reduce(1, {$0 * $1})
}
let outputMathResult = {
    (passedFunction: (Int...) -> Int  , a: Int , b: Int ) -> Int
    in
    return passedFunction(a, b)
}

let outputMathResult2 = {
    (passedFunction: (Int...) -> Int  , a: Int , b: Int, c: Int ) -> Int
    in
    return passedFunction(a, b, c)
}

//let outputMathResult2 = {
//    (passedFunction: (Int...) -> Int  , numbers: Int... ) -> Int
//    in
//    return passedFunction(numbers.index(before: passedFunction))
//}


print("Result: \(outputMathResult2(addInts, 3, 5, 5))")

print("Result: \(outputMathResult(addInts, 3 , 5))")
print("Result: \(outputMathResult(multInts, 3 , 5))")
let upElseDown = {
    (addElseSub: Bool) -> () -> String
    in
    let increase = {() -> String in return "Up vote"}
    let decrease = {() -> String in return "Down vote"}
    return addElseSub ? increase : decrease
}
let upOrDownVote = false
let vote = upElseDown(upOrDownVote)
print("You got an \(vote())")
print("You got an \(upElseDown(false)())")
print("You got an \(upElseDown(true)())")
let bothRoots = {
    (square:Double) -> (Double, Double)
    in
    let sr = sqrt(square)
    return (sr, -sr)
}
print("the roots of nine are \(bothRoots(9))")
