//
//  main.swift
//  Access Control
//
//  Created by Peter Roberts on 28/09/2019.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation

print("Hello, World!")

let myPublicClass = PublicClass()

myPublicClass.publicVar = 100
print(myPublicClass.publicVar)


myPublicClass.publicFunction()



//myPublicClass.privateFunction()
//print(myPublicClass.privateVar)

print(myPublicClass.anotherPublicVar)


//let myPrivateClass = PrivateClass()






