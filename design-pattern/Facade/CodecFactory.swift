//
//  CodecFactory.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class CodecFactory {
    func extract(file: VideoFile) -> Codec {
        return MPEG4CompressionCodec()
    }
}
