//
//  Graphic.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/3.
//

import Foundation

struct Point {
    let x: Float
    let y: Float
}

protocol Graphic: AnyObject {
    func move(to: Point)
    func draw()
}

