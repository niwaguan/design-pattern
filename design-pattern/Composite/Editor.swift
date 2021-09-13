//
//  Editor.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/3.
//

import Foundation

class Editor {
    private var components: [Graphic] = []
    
    func addDot(at position: Point) {
        components.append(Dot(position: position))
    }
    
    func moveDot(_ dot: Dot, to: Point) {
        dot.move(to: to)
    }
    
    func addCircle(at position: Point, radius: Float) {
        components.append(GCircle(position: position, radius: radius))
    }
    
    /// other funcs
    
    func draw() {
        components.forEach { $0.draw() }
    }
}
