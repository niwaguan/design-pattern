//
//  Tree.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class Tree {
    var x: Float = 0
    var y: Float = 0
    var type: TreeType
    init(type: TreeType) {
        self.type = type
    }
    
    func draw() {
        print("moving to (\(x),\(y))")
        type.draw()
    }
}
