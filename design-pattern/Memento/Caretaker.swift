//
//  Caretaker.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation


class Caretaker {
    lazy var mementos = [Memento]()
    var originator: Originator
    
    init(originator: Originator) {
        self.originator = originator
    }
    
    func backup() {
        print("\nCaretaker: Saving Originator's state...\n")
        mementos.append(originator.save())
    }
    
    func undo() {
        guard !mementos.isEmpty else { return }
        let removed = mementos.removeLast()
        print("Caretaker: Restoring state to: " + removed.name)
        originator.restore(memento: removed)
    }
    
    func showHistory() {
        print("Caretaker: Here's the list of mementos:\n")
        mementos.forEach({ print($0.name) })
    }
}
