//
//  Component2.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/8.
//

import Foundation

class Component2: Component {
    weak var mediator: Mediator?
    
    func doC() {
        print("Component 2 does C")
        mediator?.notify(sender: self, event: "C")
    }
    
    func doD() {
        print("Component 2 does D")
        mediator?.notify(sender: self, event: "D")
    }
    
}
