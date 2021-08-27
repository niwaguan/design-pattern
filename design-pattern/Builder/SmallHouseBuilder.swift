//
//  SmallHouseBuilder.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/27.
//

import Foundation

class SmallHouseBuilder: HouseBuilder {
    private var house: SmallHouse
    init() {
        house = SmallHouse()
    }
    
    func buildWalls() {
        house.parts.append("Walls")
    }
    
    func buildDoors() {
        house.parts.append("Doors")
    }
    
    func buildWindows() {
        house.parts.append("Windows")
    }
    
    func buildRoof() {
        house.parts.append("Roof")
    }
    
    func buildGarden() {
        // 小房子没有花园，这里啥也不做
    }
    
    func reset() {
        house = SmallHouse()
    }
    
    func getResult() -> SmallHouse {
        let r = house
        reset()
        return r
    }
}
