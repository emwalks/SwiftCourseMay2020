import UIKit

//constants

let value = 1
print(value)

let insertConstant = 53

//use constants into strings

print("The insert vlaue is \(insertConstant)")

let anotherConstant = "Peter"

print("My name is \(anotherConstant) and I am \(insertConstant) years old")

let a = 1, b = 2, c = 3

print("A is \(a), b is \(b), c is \(c)")

//booleans
let likeCoffee = true

print("Do you like coffee? \(likeCoffee)")

//types and casting

let value1 = 0.0

let intValue1: Int = Int(value1)
let inferredIntValue1 = Int(value1)

let floatValue1 = Float(value1)

//extra formatting
//can add padding of extra 0 and _
//purely visual though

let billionUS = 1_000_000_000

print(billionUS)

let paddedDouble = 000123.456

print(paddedDouble)

//Strings

let hi = "Hi"
let there = " there"
let greeting = hi + there

print(greeting)

let shoutingAGreeting = greeting.uppercased()
let whisperedGreeting = greeting.lowercased()

let me = "Emma"
let countMe = me.count

let aString = "Emma"
let newString = aString.prefix(3)
let anotherNewString = aString.suffix(2)


let aString1 = "abcdefghijk1234567890"
let index = aString1.index(aString.startIndex, offsetBy: 9)

let newString1 = aString1.prefix(9)
let newString1a = aString1[..<index]

let index1 = aString1.index(aString1.endIndex, offsetBy:-8)
let newString2 = aString1[index1...]
let start = aString1.index(aString.startIndex, offsetBy: 9)
let end = aString1.index(aString1.endIndex, offsetBy:-8)
let newString3 = aString1[start..<end]

// multiline strings

let mlString = """
Coffee
  Latte
  Mocha
  Flat white
  Cappuccino
Tea
Hot chocolate
Bovril
"""
print(mlString)



print(#"Print an interpolated string in Swift \(multiplier)."#)
print(#"3 multiplied by 4 is \#(3 * 4)."#)
print("\\\\")
print(#"\\\\"#)

