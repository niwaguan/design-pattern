//
//  TencentVideoProvider.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/28.
//

import Foundation

class TencentVideoProvider: VideoProvider {
    func getVideos() -> [String] {
        return ["1.mp4", "2.mp4"]
    }
    
    func getVideoBy(id: Int) -> String {
        return "\(id).mp4"
    }
    
    func downloadVideo(id: Int) {
        print("download video by id: \(id)")
    }
    
}
