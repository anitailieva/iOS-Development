//
//  Person.swift
//  PersonProject
//
//  Created by Anita Ilieva on 29/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    
    init(named: String, age: Int){
        self.name = named
        self.age = age
    }
    
    convenience init(named: String) {
        self.init(named: named, age: 0)
    }


}
