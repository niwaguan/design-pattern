//
//  VideoProvider.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/27.
//

import Foundation

protocol VideoProvider {
    func getVideos() -> [String]
    func getVideoBy(id: Int) -> String
    func downloadVideo(id: Int)
}
