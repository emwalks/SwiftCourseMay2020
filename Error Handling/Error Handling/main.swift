//
//  main.swift
//  Error Handling
//
//  Created by Peter Roberts on 28/09/2019.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation

print("Hello, World!")

enum FileSystem: Error {
    case diskFull
    case incorrectPermissions
    case fileNotFound
}


//throw FileSystem.diskFull


enum MathsError: Error {
    case divisionError
}


func divide(a: Int , b: Int) throws -> Int{
    guard b != 0 else { throw MathsError.divisionError }
    return a / b
}

do {
    let result = try divide(a: 10, b: 0)
} catch let error {
    print(error)
}



enum InputError: Error {
    case ageInCorrect
    case nameInCorrect
}
func createPerson (name: String , age: Int) throws
{
    guard name.count > 0 else { throw InputError.nameInCorrect }
    guard age > 0 else { throw InputError.ageInCorrect }
}



do {
    try createPerson(name: "Rich", age: 0)
} catch InputError.nameInCorrect {
    print("Name was missing")
} catch InputError.ageInCorrect {
    print("Age was missing")
}

let age = -3
assert( age >= 0 , "A Person can not have a negative age")




