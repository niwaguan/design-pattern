//
//  Circle.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/3.
//

import Foundation

class GCircle: Dot {
    
    var radius: Float = 0
    
    init(position: Point, radius: Float) {
        self.radius = radius
        super.init(position: position)
    }
    
    override func draw() {
        print("draw circle at\(position), radius is: \(radius)")
    }
}
