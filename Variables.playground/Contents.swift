import UIKit

var y = 201
y = y+1
y = 10*y

var value = 0
value = value + 15
value += 15

value = value * 70
value *= 70

// variable arrays
var names = ["The Doctor",  "Dalek Khan",  "The Master"]

names.append("Davros")

names += ["Omega",  "The Rani",  "Borusa"]

//this adds Missy to index 3
names[3] = "Missy"

names


// not this removes everythtng after index 6
names[4...6] = ["Jenny" , "Susan"]

names

names.insert("Brigadier", at: 0)


let deletedItem = names.remove(at: 4)
let deletedItem1 = names.removeLast()

// good for memory management
names.removeAll(keepingCapacity: true)


// variable Dictionaries
var shoppingPoints =  ["The Doctor" : 74 , "Davros" : 55 , "The Master" : 40]

shoppingPoints["Omega"] = 9999

shoppingPoints

shoppingPoints["Omega"] = 1200

shoppingPoints


if let oldValue =  shoppingPoints.updateValue(1234, forKey: "Davros") {
    print("Davros used to have \(oldValue) points on his store card. He now has \(shoppingPoints["Davros"] ?? 0)")
}


shoppingPoints

if let deletedItem = shoppingPoints.removeValue(forKey: "The Master")
{
    print(deletedItem)
    print(shoppingPoints)
}

// THIS REMOVES THE ELEMENT!!!
shoppingPoints["Omega"] = nil

shoppingPoints

var shoppingPoints1:Dictionary<String, Int?> =  ["The Doctor" : 74 , "Davros" : 55 , "The Master" : 40, "Omega" : 55 ]

shoppingPoints1["Omega"] = nil

shoppingPoints1
