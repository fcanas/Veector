//
//  VectorFunctions.swift
//  Veector
//
//  Created by Fabian Canas on 12/4/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation
import CoreGraphics

public func - (lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx-rhs.dx, dy: lhs.dy-rhs.dy)
}

public func -= (inout lhs: CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx-rhs.dx, dy: lhs.dy-rhs.dy)
}

public func + (lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx+rhs.dx, dy: lhs.dy+rhs.dy)
}

public func += (inout lhs: CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx+rhs.dx, dy: lhs.dy+rhs.dy)
}

public func magnitude(v: CGVector) -> CGFloat {
    return sqrt(v.dx*v.dx + v.dy*v.dy)
}

public func normalize(v: CGVector) -> CGVector {
    if v == CGVector.zeroVector {
        return CGVector.zeroVector
    }
    let m = magnitude(v)
    return CGVector(dx: v.dx/m, dy: v.dy/m)
}

public func + (lhs: CGPoint, rhs: CGVector) -> CGPoint {
    return CGPoint(x: lhs.x+rhs.dx, y: lhs.y+rhs.dy)
}

public func += (inout lhs: CGPoint, rhs: CGVector) {
    lhs = CGPoint(x: lhs.x+rhs.dx, y: lhs.y+rhs.dy)
}

public func - (lhs: CGPoint, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.x-rhs.x, dy: lhs.y-rhs.y)
}

infix operator • { associativity left precedence 160 }

public func • (lhs: CGVector, rhs: CGVector) -> CGFloat {
    return lhs.dx*rhs.dx + lhs.dy*rhs.dy
}

public func * (lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx*rhs, dy: lhs.dy*rhs)
}

public func / (lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx/rhs, dy: lhs.dy/rhs)
}
