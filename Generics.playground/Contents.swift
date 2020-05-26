//: Playground - noun: a place where people can play

//import UIKit

var str = "Hello, playground"


func swapTwoValues<T>( a: inout T, b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}



var someInt = 3
var anotherInt = 107
swapTwoValues(a: &someInt, b:&anotherInt)



var someString = "String 1"
var anotherString = "String 2"
swapTwoValues(a: &someString, b: &anotherString)


func weather<T,U>( value1: T , value2: U) {
    print("Its \(value1) and \(value2)")
}


weather(value1: 22, value2: "Sunny")
    weather(value1: "Snowing" , value2: 0)


struct Stack<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}


var stackOfStrings = Stack<String>()
stackOfStrings.push(item: "uno")
stackOfStrings.push(item: "dos")
stackOfStrings.push(item: "tres")
stackOfStrings.pop()


var stackOfInts = Stack<Int>()
stackOfInts.push(item: 1)
stackOfInts.push(item: 2)
stackOfInts.push(item: 3)
stackOfInts.pop()






