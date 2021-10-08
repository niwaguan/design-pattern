//
//  ComplexCommand.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/29.
//

import Foundation

class ComplexCommand: Command {
    
    private var receiver: Receiver
    
    var a = ""
    var b = ""
    
    init(receiver: Receiver) {
        self.receiver = receiver
    }
    
    func execute() {
        print("ComplexCommand: Complex stuff should be done by a receiver object.\n")
        receiver.doSomething(a)
        receiver.doSomething(b)
    }
    
}
