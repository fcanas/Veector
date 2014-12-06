//
//  VeectorTests.swift
//  VeectorTests
//
//  Created by Fabian Canas on 12/4/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import UIKit
import XCTest
import Veector

class VeectorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSubtraction() {
        let a = CGVector(dx: 3, dy: 7)
        let b = CGVector(dx: 4, dy: 2)
        let c = a - b
        XCTAssertEqual(CGVector(dx: -1, dy: 5), c, "Vector subtraction")
        
        let d = b - a
        XCTAssertEqual(CGVector(dx: 1, dy: -5), d, "Vector subtraction")
        
        let e = CGVector(dx: -1, dy: 44.2)
        let f = CGVector(dx: 7.1, dy: 0)
        let g = e - f
        XCTAssertEqual(CGVector(dx: -8.1, dy: 44.2), g, "Vector subtraction")
    }
    
    func testAddition() {
        let a = CGVector(dx: 3, dy: 7)
        let b = CGVector(dx: 4, dy: 2)
        let c = a + b
        XCTAssertEqual(CGVector(dx: 7, dy: 9), c, "Vector subtraction")
        
        let d = CGVector(dx: -1, dy: 44.2)
        let e = CGVector(dx: 7.1, dy: 0)
        let g = d + e
        XCTAssertEqual(CGVector(dx: 6.1, dy: 44.2), g, "Vector subtraction")
    }
    
    func testMagnitude() {
        let v1 = CGVector(dx: 3, dy: 4)
        XCTAssertTrue(magnitude(v1) == 5, "3, 4, 5 triangle -- vector magnituce")
        
        let v2 = CGVector(dx: 5, dy: 12)
        XCTAssertTrue(magnitude(v2) == 13, "5, 12, 13 triangle -- vector magnituce")
    }
    
    func testNormalizeZeroVector() {
        XCTAssertTrue(normalize(CGVector.zeroVector) == CGVector.zeroVector, "zero vector normalized is the zero vector")
    }
    
    func testNormalize() {
        let x = CGFloat(6.0 * sqrt(2.0)/2.0)
        let v = CGVector(dx: x, dy: x)
        
        let vv = CGVector(dx: 1.0/sqrt(2.0), dy: 1.0/sqrt(2.0))
        XCTAssertEqual(normalize(v), vv, "test normalize")
    }
    
    func testVectorPointAddition() {
        let v = CGVector(dx: 3, dy: 7)
        let p = CGPoint(x: 4, y: 2)
        let p2 = p + v
        XCTAssertEqual(CGPoint(x: 7, y: 9), p2, "Vector point addition")
    }
    
    func testDotProduct() {
        let v1 = CGVector(dx: 3, dy: 7)
        let v2 = CGVector(dx: 3, dy: 7)
        XCTAssertTrue(v1 • v2 == 58, "Vector dot product")
    }
}
