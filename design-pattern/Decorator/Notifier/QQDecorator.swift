//
//  QQDecorator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/17.
//

import Foundation

class QQDecorator: BaseDecorator {
    override func send(message: String) {
        super.send(message: message)
        print("I'm QQDecorator, now i'm sending message: \(message)")
    }
}
