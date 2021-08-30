//
//  Cat.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/30.
//

import Foundation

class Cat: Animal {
    private var age: Int = 0
    
    convenience init() {
        self.init(name: "", color: "")
        age = 0
    }
    
    required init(name: String, color: String) {
        super.init(name: name, color: color)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? Cat else {
            return Cat()
        }
        prototype.age = age
        return prototype
    }
    
    override var description: String {
        return "\(super.description) - age: \(age)"
    }
}
