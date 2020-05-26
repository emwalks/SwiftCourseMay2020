//
//  main.swift
//  GCD_Example3
//
//  Created by Peter Roberts on 31/09/2019.
//  Copyright © 2019 Training. All rights reserved.
//

import Foundation

print("Hello, World!")



class CalculatePrimes {
    var isPrime: Bool
    
    func start () {
        for p in 2..<2500 {
            isPrime = true
            for d in 2..<p {
                if p % d == 0 {
                    isPrime = false
                }
            }
            if isPrime {
                print(p)
            }
        }
    }
    
    init() {
        self.isPrime = true
    }
}



let myQueue = OperationQueue()
let myPrimes = CalculatePrimes()



myQueue.addOperation( { myPrimes.start() } )
myQueue.cancelAllOperations()


myQueue.waitUntilAllOperationsAreFinished()

myQueue.maxConcurrentOperationCount = 1





