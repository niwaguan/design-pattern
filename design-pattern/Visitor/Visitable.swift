//
//  Visitable.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/18.
//

import Foundation


protocol Visitable {
    func accept(visitor: ShapeVisitor)
}

