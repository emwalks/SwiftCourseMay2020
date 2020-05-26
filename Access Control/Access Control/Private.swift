//
//  Private.swift
//  Access Control
//
//  Created by Peter Roberts on 28/09/2019.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation



private class PrivateClass {
    var privateVar: Int = 10
    var privateType: PublicClass = PublicClass()
    func privateFunction() {
        print("Private Function executed from private class")
    }
}



