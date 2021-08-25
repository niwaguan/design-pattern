//
//  ConcreteProduct2.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

class ConcreteProduct2: Product {
    func opeartion() -> String {
        return "我是ConcreteProduct2，哎呦呦..."
    }
    func report() -> String {
        return "我是ConcreteProduct2，似乎遇到一些问题，不过我能处理！"
    }
}
