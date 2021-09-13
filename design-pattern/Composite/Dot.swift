//
//  Dot.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/3.
//

import Foundation

class Dot: Graphic {
    
    var position: Point
    
    func move(to: Point) {
        position = to
    }
    
    func draw() {
        print("draw dot at\(position)")
    }
    
    init(position: Point) {
        self.position = position
    }
}
