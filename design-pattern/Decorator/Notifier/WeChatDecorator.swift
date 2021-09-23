//
//  WeChatDecorator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/17.
//

import Foundation

class WeChatDecorator: BaseDecorator {
    
    override func send(message: String) {
        super.send(message: message)
        print("I'm WeChatDecorator, now i'm sending message: \(message)")
    }
}
