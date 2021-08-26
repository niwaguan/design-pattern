//
//  Chair.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

/// 椅子抽象接口
protocol Chair {
    var legs: Int { get }
    func sitOn()
}
