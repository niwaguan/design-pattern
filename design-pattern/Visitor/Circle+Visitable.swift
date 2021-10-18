//
//  Circle+Visitable.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/18.
//

import Foundation

extension Circle: Visitable {
    func accept(visitor: ShapeVisitor) {
        visitor.visitCircle(self)
    }
}
