//
//  Codec.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

protocol Codec {
    func decode(file: VideoFile) -> [Int]
    func encode(buffer: [Int]) -> VideoFile
}
