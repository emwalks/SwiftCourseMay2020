import UIKit

//array literals

let fib:[Double] = [1, 1, 2, 3, 5, 8]
fib.count
print("the values in the fib sequence are \(fib)")

print("The first element is \(fib[0])")
//print("The 6th element is \(fib[6])")

//adding arrays

let array1 = ["A", "B", "C", "D"]
let array2 = ["a", "b", "c", "d"]
let newArray = array1 + array2
print("new array has the following values \(newArray)")

let array3 = [array1, array2]

//first last drops

let numList = [1,2,3,4,5,6]
numList.first
numList.last

let empty = [Int]()
empty.first
empty.last

numList.dropFirst()
numList.dropLast()
empty.dropFirst()
empty.dropLast()

//tuples
let invader = (alien: "Dalek", number: 3, dangerous: true)
print(invader.alien)
print(invader.0)


