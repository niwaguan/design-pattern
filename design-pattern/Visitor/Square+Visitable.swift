//
//  Square+Visitable.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/18.
//

import Foundation

extension Square: Visitable {
    func accept(visitor: ShapeVisitor) {
        visitor.visitSquare(self)
    }
}
