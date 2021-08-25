//
//  ConcreteCreator1.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

/// 一个具体的Creator，通过覆写factoryMethod，返回指定Product，改变Creator使用合作对象
class ConcreteCreator1: Creator {
    func factoryMethod() -> Product {
        return ConcreteProduct1()
    }
}
