//
//  Memento.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation

protocol Memento {
    var name: String { get }
    var date: Date { get }
}

class ConcreteMemento: Memento {
    
    private(set) var state: String
    private(set) var date: Date

    init(state: String) {
        self.state = state
        self.date = Date()
    }

    var name: String { return state + " " + date.description.suffix(14).prefix(8) }
}
