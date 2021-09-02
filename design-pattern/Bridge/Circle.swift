//
//  Circle.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/2.
//

import Foundation

class Circle: Shape {
    
    var r: Float = 1
    
    var color: Color = RedColor()
    
    var area: Float {
        return Float.pi * r * r
    }
}
