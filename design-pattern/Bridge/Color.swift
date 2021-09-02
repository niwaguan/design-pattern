//
//  Color.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/2.
//

import Foundation

protocol Color: CustomStringConvertible {
    
    var name: String { get }
}

extension Color {
    var description: String {
        return "Color: \(name)"
    }
}
