//
//  Director.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/27.
//

import Foundation


class Director {
    private var builder: HouseBuilder?
    func updateBuilder(_ builder: HouseBuilder) {
        self.builder = builder
    }
    
    func makeHouse() {
        guard let builder = self.builder else {
            return
        }
        builder.buildDoors()
        builder.buildWalls()
        builder.buildRoof()
        builder.buildGarden()
        builder.buildWindows()
    }
}
