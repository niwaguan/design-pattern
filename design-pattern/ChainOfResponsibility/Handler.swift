//
//  Handler.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/28.
//

import Foundation

protocol Handler: AnyObject {
    
    @discardableResult
    func setNext(_ handler: Handler) -> Handler
    
    func handle(request: String) -> String?
    
    var nextHandler: Handler? { get set }
}

extension Handler {
    func setNext(_ handler: Handler) -> Handler {
        self.nextHandler = handler
        return handler
    }
    
    func handle(request: String) -> String? {
        return nextHandler?.handle(request: request)
    }
}
