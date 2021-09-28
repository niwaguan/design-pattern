//
//  MonkeyHandler.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/28.
//

import Foundation

class MonkeyHandler: Handler {
    var nextHandler: Handler?
    
    func handle(request: String) -> String? {
        if request == "Banana" {
            return "Monkey: I'll eat the \(request)."
        }
        return nextHandler?.handle(request: request)
    }
}
