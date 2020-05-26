//
//  Public.swift
//  Access Control
//
//  Created by Peter Roberts on 28/09/2019.
//  Copyright © 2019 iAppz Limited. All rights reserved.
//

import Foundation

public class PublicClass {
    var publicVar: Int = 10
    private var privateVar: Int = 100
    
    private func privateFunction() {
        print("Private Function executed from public class")
    }
    func publicFunction() {
        print("Public Function executed from public class")
    }
    
    var anotherPublicVar: Int {
        get {
            return privateVar
        }
    }

    

}



