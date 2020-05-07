import UIKit

func forwards(s1: String, s2:String) -> Bool {
    return s1 < s2
}

let letters = ["M", "E", "W", "A"]

//Sort

let sortedLetters = letters.sorted(by: forwards)

let sortMyName = "emmawalker".sorted(by: {$0 < $1})

print(sortMyName)

let numbers = [5, 3, 7, 8, 2, 4, 9]

//compare array item with the next

let sortedNumbers = numbers.sorted(by: {$0 < $1})

print(sortedNumbers)

//map

let mapNum = numbers.map({$0 * $0})
print(mapNum)

let StrArr:[Character] = "hello".map({$0})
print(StrArr)


// Filter out the even numbers only odd numbers remain
let filtNum = numbers.filter({$0%2 == 1})
print(filtNum)


// add all the numbers
let reduceNum = numbers.reduce(0, {$0 + $1})
print(reduceNum)

let n1 = [1,2,3,4,5]
let a1 = ["a","b","c","d","e"]
let z1 = zip(a1, n1)
print(Array(z1))    // returns "[(a, 1), (b, 2), (c, 3), (d, 4), (e, 5)]”

let n2 = [1,2,3,4,5,6,7,8,9,10]
let a2 = ["a","b","c","d","e"]
let z2 = zip(a2, n2)
print(Array(z2))     //returns "[(a, 1), (b, 2), (c, 3), (d, 4), (e, 5)]"

let shortSort = "ghgddry".sorted(by: < )
print(shortSort)
