//
//  Creator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

/// 创建者，产品的使用方
protocol Creator {
    /// 提供创建产品的方法，以供实现者使用
    func factoryMethod() -> Product
    /// 其他的操作逻辑
    func someOperation() -> String
}

extension Creator {
    func someOperation() -> String {
        let product = factoryMethod()
        return "Creator: 我可以和满足Product接口的对象合作，现在它在执行这个：\(product.opeartion())。好了，报告状态：\(product.report())"
    }
}
