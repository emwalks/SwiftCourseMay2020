import UIKit

func forwards(s1: String, s2:String) -> Bool {
    return s1 < s2
}

let letters = ["M", "E", "W", "A"]

let sortedLetters = letters.sorted(by: forwards)

let sortMyName = "emmawalker".sorted(by: {$0 < $1})

print(sortMyName)

let numbers = [5, 3, 7, 8, 2, 4, 9]

//compare array item with the next

let sortedNumbers = numbers.sorted(by: {$0 < $1})

print(sortedNumbers)

