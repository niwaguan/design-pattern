//
//  GraphicContainer.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/3.
//

import Foundation

class GraphicContainer: Graphic {
    
    private var children: [Graphic] = []
    
    func move(to: Point) {
        children.forEach { $0.move(to: to) }
    }
    
    func draw() {
        children.forEach { $0.draw() }
    }
    
    func add(graphic: Graphic) {
        children.append(graphic)
    }
    
    func remove(graphic: Graphic) {
        children.removeAll(where: { $0 === graphic })
    }
}
