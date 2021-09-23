//
//  BaseDecorator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/17.
//

import Foundation

class BaseDecorator: Notifier {
    
    var wrapped: Notifier
    
    init(wrapped: Notifier) {
        self.wrapped = wrapped
    }
    
    func send(message: String) {
        print("我只是一个包装器，我就是不干活，这可多亏了\(wrapped)")
        wrapped.send(message: message)
    }
}
