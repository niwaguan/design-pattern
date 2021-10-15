//
//  RoadStrategy.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/15.
//

import Foundation

class RoadStrategy: RouteStrategy {
    func buildRoute(from: String, to: String) -> [String] {
        return [
            "从\(from)去京九高速入口",
            "上高速",
            "开往北京出口",
            "到达\(to)"
        ]
    }
}
