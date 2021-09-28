//
//  SquirrelHandler.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/28.
//

import Foundation

class SquirrelHandler: Handler {
    var nextHandler: Handler?
    func handle(request: String) -> String? {
        if request == "Nut" {
            return "Squirrel: I'll eat the \(request)."
        }
        return nextHandler?.handle(request: request)
    }
}
