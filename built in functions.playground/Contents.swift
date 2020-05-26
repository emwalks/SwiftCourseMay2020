//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
// abs(signedNumber)

// Returns the absolute value of a given signed number

abs(-1)

abs(-2)

abs(2)


/// contains(sequence, element)

// Returns true if a given sequence contains the specified element

var languages = ["C++", "C", "Swift", "Objective-C"]

languages.contains("Objective-C")
languages.contains("Java")


// sequence.count

// Counts the number of elements in an Array, Dictionary or string

["A":1,"B":2].count

["Z","Y","X"].count

"Swift".count



// dropFirst(sequence)

// Returns a new sequence without the first element of the sequence

["a", "b", "c", "d"].dropFirst()


// dropLast(sequence)

// Returns a new sequence without the last element of the sequence

["a", "b", "c", "d"].dropLast()






/// enumerate(sequence)

// Gives a number as well as an element in a for in loop

for (first, second) in ["Z", "X"].enumerated() {
    
    print("\(first):\(second)") // "0:Z", "1:X" will be printed
    
}


// joinWithSeperator(separator, sequence)

// Returns the elements of the supplied sequence separated by the given separator

["a", "b", "c"].joined(separator: "*")

["1", "2", "3"].joined(separator: "~")

// map(sequence, Closure)

// Returns a new sequence with the Closure applied to all elements in the supplied sequence

(1...5).map( { $0 * 7} )


// max(comparable1, comparable2, etc…)

// Returns the largest of the arguments given to the function

max(2, 1)

max(9, 4, 3)


// max(sequence)

// Returns the largest element in a supplied sequence of comparable elements

(1...7).max()

["a", "b", "c", "d"].max()

/// min(comparable1, comparable2, etc…)

// Returns the smallest of the arguments given to the function

min(2, 1)

min(9, 4, 3)



// minElement(sequence)

// Returns the smallest element in a supplied sequence of comparable elements

(1...7).min()

["a", "b", "c", "d"].min()

/// reduce(sequence, initial, Closure)

// Recursively reduce the elements in sequence into one value by running the Closure on them with starting value of initial

["a", "b", "c", "d"].reduce("") { $0 + $1 }


[100, 2, 50].reduce(1) { $0 * $1 }



/// filter(sequence, Closure)

// Returns the elements from a sequence that evaluates to true by the Closure

let x  =  (1...100).filter( { $0 % 10 == 0 } )
print(x)



/// dump(item)


dump(languages)


let reverseString = String("ABCDEFGHIJKLMNOPQRSTUVWXYZ".reversed())

let numbers = [ 1 , 2 , 3 , 4 , 5 , 6 ]

let reverseNumbers = Array(numbers.reversed())

for item in numbers.reversed() {
    print(item)
    
}





let multiArray = [[1,2,3] , [4,5,6]]

print(Array(multiArray.joined()))




var flattenArray  = multiArray.flatMap{ $0 }


let optionalInts:[Int?] = [ 1 , 2 , nil , 4 , nil , 6]
let noNils = optionalInts.compactMap { $0 }
print(noNils)

flattenArray = multiArray.flatMap { $0.map { $0 * 2 } }
print(flattenArray)

for index in stride(from: 0, to: 8, by: 2) {
    print(index)
}

for index in stride(from: 0, through: 8, by: 2) {
    print(index)
}













