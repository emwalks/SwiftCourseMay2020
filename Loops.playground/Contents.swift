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

