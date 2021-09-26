//
//  Forest.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class Forest {
    var trees = [Tree]()
    
    func grow() {
        (0..<10).forEach { x in
            let type = TreeFactory.getType(by: "胡杨")
            let tree = Tree(type: type)
            trees.append(tree)
        }
    }
    func draw() {
        trees.forEach {
            $0.draw()
        }
    }
}
