//
//  PersonProjectTests.swift
//  PersonProjectTests
//
//  Created by Anita Ilieva on 29/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit
import XCTest
@testable import PersonProject

class PersonProjectTests: XCTestCase {
    
    func testCreatePerson() {
        let person = Person(named: "John Doe")
        XCTAssertNotNil(person)
    }
    
    func testPersonWithName() {
        let person = Person(named: "John Doe")
        XCTAssertEqual(person.name, "John Doe")
    }
    
    func testPersonWithAge() {
        let person = Person(named: "John Doe")
        person.age = 28
        XCTAssertEqual(person.age, 28)
    }
    
    func testUpdatePersonName() {
        let person = Person(named: "John Doe")
        person.name = "Steve Jobs"
        XCTAssertEqual(person.name, "Steve Jobs")
    }
    
    func testAssertWrongValue(){
        let person = Person(named: "John Doe")
        person.age = 12
        XCTAssertEqual(person.age, 29)

    }
}
