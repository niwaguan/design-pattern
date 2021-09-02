//
//  Square.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/2.
//

import Foundation

class Square: Shape {
    
    var side: Int = 0
    
    var color: Color = RedColor()
    
    var area: Float {
        return Float(side * side)
    }
}
