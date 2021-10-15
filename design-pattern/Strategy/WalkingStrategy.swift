//
//  WalkingStrategy.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/15.
//

import Foundation

class WalkingStrategy: RouteStrategy {
    
    func buildRoute(from: String, to: String) -> [String] {
        return [
            "从\(from)到\(to)全程1000km，你确定要地奔去？"
        ]
    }
}
