//
//  TreeType.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

/// 共享信息，设置为不可改变
class TreeType {
    let name: String
    let color: String
    // 纹理，可能占据大量内存
    let texture: Int
    
    init(name: String, color: String, texture: Int) {
        self.name = name
        self.color = color
        self.texture = texture
    }
    
    func draw() {
        print("draw texture: \(texture)")
    }
}
