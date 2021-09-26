//
//  VideoConverter.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/26.
//

import Foundation

class VideoConverter {
    static func covert(video: String, to format: String) -> VideoFile {
        let file = VideoFile(path: video)
        let sourceCodec = CodecFactory().extract(file: file)
        var targetCodec: Codec!
        if format == "mp4" {
            targetCodec = MPEG4CompressionCodec()
        } else if format == "ogg" {
            targetCodec = OggCompressionCodec()
        }
        let buffer = sourceCodec.decode(file: file)
        let result = targetCodec.encode(buffer: buffer)
        return result
    }
}
