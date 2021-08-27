//
//  HouseBuilder.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/27.
//

import Foundation

/// 房屋构建者。说明构建房屋需要的步骤
protocol HouseBuilder {
    func buildWalls()
    func buildDoors()
    func buildWindows()
    func buildRoof()
    func buildGarden()
}
