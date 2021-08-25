//
//  Product.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

/// 产品。对Creator提供接口支持
protocol Product {
    func opeartion() -> String
    func report() -> String
}
