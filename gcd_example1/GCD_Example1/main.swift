//
//  main.swift
//  GCD_Example1
//
//  Created by Peter Roberts on 28/09/2019.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation

print("Hello, World!")





//var myQueue: dispatch_queue_t = dispatch_get_global_queue (DISPATCH_QUEUE_PRIORITY_DEFAULT , 0 )

let myQueue = DispatchQueue.global(qos: .default)

myQueue.async {
    print("0")
}
myQueue.async {
    print("1")
}
myQueue.async {
    print("2")
}
myQueue.async {
    print("3")
}
myQueue.async {
    print("4")
}
myQueue.async {
    print("5")
}
myQueue.async {
    print("6")
}
myQueue.async {
    print("7")
}
myQueue.async {
    print("8")
}
myQueue.async {
    print("9")
}






sleep(1)











