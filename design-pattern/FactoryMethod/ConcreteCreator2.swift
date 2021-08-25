//
//  ConcreteCreator2.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

class ConcreteCreator2: Creator {
    func factoryMethod() -> Product {
        return ConcreteProduct2()
    }
}
