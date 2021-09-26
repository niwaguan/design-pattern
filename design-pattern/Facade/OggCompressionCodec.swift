//
//  OggCompressionCodec.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class OggCompressionCodec: Codec {
    func decode(file: VideoFile) -> [Int] {
        return [1]
    }
    func encode(buffer: [Int]) -> VideoFile {
        return VideoFile(path: "temp")
    }
}
