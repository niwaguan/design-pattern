//
//  ModernStyleFurnitureFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

class ModernStyleFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return ModernChair()
    }
    
    func createSofa() -> Sofa {
        return ModernSofa()
    }
}
