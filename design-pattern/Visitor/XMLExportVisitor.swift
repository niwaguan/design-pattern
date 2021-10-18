//
//  XMLExportVisitor.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/18.
//

import Foundation

class XMLExportVisitor: ShapeVisitor {
    
    func visitSquare(_ square: Square) {
        print("export \(square) to xml")
    }
    
    func visitCircle(_ circle: Circle) {
        print("export \(circle) to xml")
    }
    
}
