//
//  Originator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation


class Originator {
    private var state: String
    
    init(state: String) {
        self.state = state
        print("Originator: My initial state is: \(state)")
    }
    
    private func generateRandomString() -> String {
        return String(UUID().uuidString.suffix(4))
    }
    
    func doSomething() {
        print("Originator: I'm doing something important.")
        state = generateRandomString()
        print("Originator: and my state has changed to: \(state)")
    }
    
    func save() -> Memento {
        return ConcreteMemento(state: state)
    }
    
    func restore(memento: Memento) {
        guard let memento = memento as? ConcreteMemento else { return }
        state = memento.state
        print("Originator: My state has changed to: \(state)")
    }
}
