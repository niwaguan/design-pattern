//
//  Animal.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/30.
//

import Foundation

class Animal: NSCopying, CustomStringConvertible {
    private var name: String = "UnNamed"
    private var color: String = "White"
    
    required init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init(name: name, color: color)
        return prototype
    }
    
    var description: String {
        return "[Animal] name: \(name), color: \(color)"
    }
}
