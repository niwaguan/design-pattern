//
//  SMSDecorator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/17.
//

import Foundation

class SMSDecorator: BaseDecorator {
    
    override func send(message: String) {
        super.send(message: message)
        print("I'm SMSDecorator, now i'm sending message: \(message)")
    }
}
