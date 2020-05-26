//
//  main.swift
//  GCD_Example2
//
//  Created by Peter Roberts on 28/09/201.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation

print("Hello, World!")




let myQueue = DispatchQueue.global(qos: .default)


myQueue.async {
    for counter in 1..<10000 {
        print("\(counter)")
    }
}


let myGroup = DispatchGroup()

myQueue.async(group: myGroup) {
    for counter in 1..<10000 {
        print("\(counter)")
    }
}

myQueue.async(group: myGroup) {
    for counter in (1..<10000).reversed() {
        print("\(counter)")
    }
}

myGroup.notify(queue: myQueue){ print("The dispatch group has finished all of its tasks")  }


myGroup.wait(timeout: .distantFuture)





