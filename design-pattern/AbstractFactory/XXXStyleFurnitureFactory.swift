//
//  XXXStyleFurnitureFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

class XXXStyleFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return XXXChair()
    }
    
    func createSofa() -> Sofa {
        return XXXSofa()
    }
}
