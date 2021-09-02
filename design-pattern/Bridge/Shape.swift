//
//  Shape.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/2.
//

import Foundation

protocol Shape: CustomStringConvertible {
    
    var area: Float { get }
    
    var color: Color { get set }
}

extension Shape {
    var description: String {
        return "\(type(of: self)) area: \(area), color: \(color)"
    }
}
