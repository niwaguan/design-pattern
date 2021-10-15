//
//  Navigator.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/15.
//

import Foundation


class Navigator {
    var routeStrategy: RouteStrategy?
    
    func buildRoute(to: String) {
        guard let strategy = routeStrategy else {
            print("你想怎么去：\(to)")
            return
        }
        let current = "当前位置"
        let steps = strategy.buildRoute(from: current, to: to)
        print("你需要这样走：")
        steps.forEach { print($0) }
    }
    
    func buildWalkRoute() {
        print("⚠️地下走")
        routeStrategy = WalkingStrategy()
        buildRoute(to: "天安门")
    }
    
    func buildRoadRoute() {
        print("⚠️开车")
        routeStrategy = RoadStrategy()
        buildRoute(to: "天安门")
    }
    
    func buildPublicTransportRoute() {
        print("⚠️公共交通")
        routeStrategy = PublicTransportStrategy()
        buildRoute(to: "天安门")
    }
}
