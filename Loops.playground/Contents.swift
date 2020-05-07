import UIKit

for index in 1...5 {
    print("this is number \(index)")
}

for aNumber in 1...5 {
    print("this is number \(aNumber)")
}


// for loops
//for  var counter = 0 ; counter < 10 ; ++counter
//{
//    print("This is loop \(counter)")
//}

let names = ["The Doctor",  "Dalek Khan",  "The Master"]

for  aName in names  {
    print("Are you \(aName) ?")
}


let shoppingPoints =  ["The Doctor" : 74 , "Davros" : 55 , "The Master" : 40]

for  (name, points) in shoppingPoints  {
    print("\(name) has \(points) points")
}

for  character  in "abcdefghijklmnopqrstuvwxyz1234567890"
{
    print(character)
}

// while loops
var turns = 1

while turns <= 3
{
    print("This is turn number \(turns)")
    turns += 1
}


var  gotTurnsLeft = true;

while  gotTurnsLeft
{
    turns -= 1
    if turns == 0 {
        gotTurnsLeft = false
    }
    print("turns = \(turns). got another turn")
}


// do while
var counter = 0
repeat
{
    print("This is loop \(counter)")
    counter += 1
} while counter < 5


for  counter in -5...5
{
    print(counter)
    if counter == 0 {
        break
    }
}


for  counter in -5...5
{
    print(counter)
    if counter == 0 {
        continue
    }
}

// break and continue
// jumping from inner to outer loops

outer: for i in 1...3 {
    inner: for j in 1...3 {
        if j > 2 {
            continue outer
        }
        print("i: \(i)  j: \(j)")
    }
}
// i: 1  j: 1
// i: 1  j: 2
// i: 2  j: 1
// i: 2  j: 2
// i: 3  j: 1
// i: 3  j: 2

outer: for i in 1...5 {
   inner: for j in 1...5 {
        if (j * i) > 3 {
            break outer
        }
        print("\(i) * \(j) = \(i * j)")
   }
}
// 1 * 1 = 1
// 1 * 2 = 2
// 1 * 3 = 3
