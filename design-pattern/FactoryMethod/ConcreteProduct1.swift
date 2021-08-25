//
//  ConcreteProduct1.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

class ConcreteProduct1: Product {
    func opeartion() -> String {
        return "我是ConcreteProduct1，突突突..."
    }
    func report() -> String {
        return "我是ConcreteProduct1，工作状态正常！"
    }
}
