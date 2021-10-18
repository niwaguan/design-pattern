//
//  ShapeVisitor.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/18.
//

import Foundation

protocol ShapeVisitor {
    func visitSquare(_ square: Square)
    func visitCircle(_ circle: Circle)

}
