import UIKit

//MARK: - Equatable
struct EmmasSimpleStructure: Equatable {
    var name = "Untitled"
}

let myStructure = EmmasSimpleStructure()

let myOtherStrucutre = EmmasSimpleStructure()

if myStructure == myOtherStrucutre {
    print("Emmas simple structures are equal")
}

// if all your types in your struct conform to the equatable protocol themselves then you do not need to implement it

class SimpleStructure: Equatable {
    
    var name = "Default Name"
    
    static func == (lhs: SimpleStructure, rhs: SimpleStructure) -> Bool {
        return lhs.name == rhs.name
    }
}


//func == (lhs: SimpleStructure, rhs: SimpleStructure) -> Bool
//{
//    return lhs.name == rhs.name
//}

let value1 = SimpleStructure()
var value2 = SimpleStructure()

var firstCheck = value1 == value2

value2.name = "A New Name"

var secondCheck = value1 == value2


struct ComplexStructure: Equatable {
    var name = "Default Name"
    var age = 0
}

func ==(lhs: ComplexStructure, rhs: ComplexStructure) -> Bool
{
    return lhs.name == rhs.name && lhs.age == rhs.age
}

let complexValue1 = ComplexStructure()

var complexValue2 = ComplexStructure()

let firstComplexCheck = complexValue1 == complexValue2

complexValue2.age = 1
let secondComplexCheck = complexValue1 == complexValue2

//MARK:- Comparable
struct MyStruct: Comparable {
    var name = "Untitled"
}

func ==(lhs: MyStruct, rhs: MyStruct) -> Bool {
    return lhs.name == rhs.name
}
func <(lhs: MyStruct, rhs: MyStruct) -> Bool {
    return lhs.name < rhs.name
}

var value3 = MyStruct()

var value4 = MyStruct()

firstCheck = value3 < value4

value4.name = "Zoo"

secondCheck = value3 < value4

//MARK:- Printable

struct MyType: CustomStringConvertible {
    var name = "Default Name"
    var description: String {
        return "MyType: \(name)"
    }
}

let value5 = MyType()

print("Created a \(value5)")


//MARK:- Hashable
class User: Hashable {
    
    var uid: Int
    var name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uid)
        hasher.combine(name)
    }
    
    init(uid: Int, name: String) {
        self.uid = uid
        self.name = name
    }
}

func ==(lhs: User, rhs: User) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

let user1 = User(uid:1 , name: "Richard")

var user2 = User(uid:2 , name: "Peter")

user1.hashValue

user2.hashValue

var myDictionary = Dictionary<User, String>()

var emmasDictionary = [User: String]()

myDictionary[user1] = "This is the value for user one"

myDictionary[user2] = "This is the value for user two"

myDictionary[user1]

myDictionary[user2]

user2 = User(uid:1 , name: "Richard")

myDictionary[user2]
