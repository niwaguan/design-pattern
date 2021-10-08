//
//  Mediator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/8.
//

import Foundation

protocol Mediator: AnyObject {
    func notify(sender: Component, event: String)
}

class ConcreteMediator: Mediator {
    private var component1: Component1
    private var component2: Component2
    
    init(_ component1: Component1, _ component2: Component2) {
        self.component1 = component1
        self.component2 = component2
        
        self.component1.mediator = self
        self.component2.mediator = self
    }
    
    func notify(sender: Component, event: String) {
        if event == "A" {
            print("Mediator reacts on A and triggers following operations:")
            self.component2.doC()
        }
        else if (event == "D") {
            print("Mediator reacts on D and triggers following operations:")
            self.component1.doB()
            self.component2.doC()
        }
    }
}
