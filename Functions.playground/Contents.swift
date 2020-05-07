import UIKit

import Foundation

var str = "Hello, playground"

//simple function
func showPhi()
{
    print("The value of phi is (√5 + 1) ÷ 2 ")
}

showPhi()

//takes and returns argument

func maxi( number1:Int , number2:Int ) -> Int
{
    return number1 > number2 ? number1: number2
}

print("Max of 12 , 4 is \(maxi(number1: 12, number2: 4))")

//overload - same name, different signature

func maxi( number1:Double , number2:Double ) -> Double {
    return number1 > number2 ? number1: number2
}
print("Max of 15.8 , 6.5 is \(maxi(number1: 15.8, number2: 6.5))")


//function name parameters

func hiThere(fn: String, sn: String)
{
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThere(fn: "Fred" , sn: "Bloggs")

// no external name, but internal names
func hiThereAgain(_ fn: String, _ sn: String)
{
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThereAgain("Fred" , "Bloggs")

func hiThereYetAgain(firstname fn: String, surname sn: String)
{
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThereYetAgain( firstname: "Fred" , surname: "Bloggs")


// default parameters

func shoppingPoints(_ fn: String, _ sn: String, points: Int = 0)
{
    let name_points = fn + " " + sn + " " + String(points)
    print(name_points)
}

shoppingPoints("Burt" , "Smith")

shoppingPoints("Burt" , "Smith" , points: 510)

// nested functions

func upElseDown (addElseSub: Bool) -> () -> String
{
    func increase() -> String {return "Up vote"}
    func decrease() -> String {return "Down vote"}
    return addElseSub ? increase : decrease
}

let upOrDownVote = false
let vote = upElseDown(addElseSub:upOrDownVote)

print("You got an \(vote())")

// recursion - functions can call themselves

let numList = [1,2,3,4,5,6]

func walkArray(array:[Int])
{
    if let head = array.first
    {
        let tail = Array(array.dropFirst())
        print(head)
        walkArray(array:tail)
    }
}

walkArray(array:numList)
