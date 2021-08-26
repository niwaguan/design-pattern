//
//  FurnitureFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

/// 家具工厂抽象接口
protocol FurnitureFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
}
