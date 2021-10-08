//
//  Invoker.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/8.
//

import Foundation

class Invoker {
    var onStart: Command?
    var onFinish: Command?
    
    func doSomethingImportant() {
        
        print("Invoker: Does anybody want something done before I begin?")

        onStart?.execute()

        print("Invoker: ...doing something really important...")
        print("Invoker: Does anybody want something done after I finish?")

        onFinish?.execute()
    }
}
