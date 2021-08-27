//
//  PalaceBuilder.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/27.
//

import Foundation

class PalaceBuilder: HouseBuilder {
    private var palace = Palace()
    func buildWalls() {
        palace.parts.append("Stronger Walls")
    }
    
    func buildDoors() {
        palace.parts.append("Beautiful Doors")
    }
    
    func buildWindows() {
        palace.parts.append("Big Windows")
    }
    
    func buildRoof() {
        palace.parts.append("Air Roof")
    }
    
    func buildGarden() {
        palace.parts.append("Big Garden")
    }
    
    func reset() {
        palace = Palace()
    }
    
    func getResult() -> Palace {
        let r = palace
        reset()
        return r
    }
}
