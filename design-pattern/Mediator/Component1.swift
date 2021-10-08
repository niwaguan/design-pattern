//
//  Component1.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/8.
//

import Foundation

class Component1: Component {
    weak var mediator: Mediator?
    
    func doA() {
        print("Component 1 does A")
        mediator?.notify(sender: self, event: "A")
    }
    
    func doB() {
        print("Component 2 does B")
        mediator?.notify(sender: self, event: "B")
    }
}
