//
//  House.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/27.
//

import Foundation

protocol House: CustomStringConvertible {
    var parts: [String] { get set }
}

extension House {
    var description: String {
        return parts.joined(separator: ", ")
    }
}
