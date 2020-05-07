import UIKit

let shoppingPoints: Dictionary<String, Int> = [
    "The Doctor" : 74,
    "Davros" : 55,
    "The Master" : 40
]

let count = shoppingPoints.count

let shoppingPoints2 = [
    "The Doctor" : 74,
    "Davros" : 55,
    "The Master" : 40
]

let count2 = shoppingPoints2.count

let emptyDictionary = Dictionary<String, String>()
let emptyDictionary2 = [String: String]()

if let myPoints = shoppingPoints["Davros"] {
    print(myPoints)
}
if let myPoints = shoppingPoints["The Doctor"] {
    print(myPoints)
}
if let myPoints = shoppingPoints["The Master"] {
    print(myPoints)
}

if let myPoints = shoppingPoints["Fred"] {
    print(myPoints)
} else {
    print("No points")
}

let allKeys = Array(shoppingPoints.keys)
print(allKeys)

let allValues = Array(shoppingPoints.values)
print(allValues)

let cardsDr = [1,2,3,4,5]
let cardsDavros = [6,7,6,9,10]

let shoppingCards = ["The Doctor": cardsDr, "Davros": cardsDavros]

if let firstDrsCards = shoppingCards["The Doctor"]?[0] {
    print(firstDrsCards)
}

let cardAndBalancesDr = [
    "Tesco":70,
    "Waitrose" :20
]

let storeCards = [
    "The Doctor": cardAndBalancesDr
]

if let drsGreatestBalance = storeCards["The Doctor"]?.values.max() {
    print(drsGreatestBalance)
}

