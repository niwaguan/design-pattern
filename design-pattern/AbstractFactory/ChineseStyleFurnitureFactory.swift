//
//  ChineseStyleFurnitureFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

class ChineseStyleFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return ChineseChair()
    }
    
    func createSofa() -> Sofa {
        return ChineseSofa()
    }
}
