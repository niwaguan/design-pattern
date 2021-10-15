//
//  PublicTransportStrategy.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/15.
//

import Foundation

class PublicTransportStrategy: RouteStrategy {
    
    func buildRoute(from: String, to: String) -> [String] {
        return [
            "从\(from)去信阳火车站",
            "上火车",
            "去往北京西站",
            "到达\(to)"
        ]
    }
}
