//
//  TreeFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class TreeFactory {
    static var treeTypes = [TreeType]()
    static func getType(by name: String) -> TreeType {
        if let r = treeTypes.first(where: { $0.name == name }) {
            return r
        }
        let n = TreeType(name: name, color: "Red", texture: 1)
        treeTypes.append(n)
        return n
    }
}
