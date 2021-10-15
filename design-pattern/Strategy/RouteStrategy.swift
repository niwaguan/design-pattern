//
//  RouteStrategy.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/15.
//

import Foundation

protocol RouteStrategy {
    func buildRoute(from: String, to: String) -> [String]
}
