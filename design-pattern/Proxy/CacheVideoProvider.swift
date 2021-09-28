//
//  CacheVideoProvider.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/28.
//

import Foundation

/// 代理类，负责添加缓存功能
class CacheVideoProvider: VideoProvider {
    
    /// 视频列表缓存
    var videosCache: [String]?
    /// 视频信息缓存
    var videoCache: [Int: String?] = [:]
    /// 视频下载记录
    var downloadTask: [Int] = []
    
    /// 具体负责提供视频的幕后工作者
    let provider: VideoProvider
    init(provider: VideoProvider) {
        self.provider = provider
    }
    
    func getVideos() -> [String] {
        /// 存在缓存直接返回缓存数据
        if let cache = videosCache {
            return cache
        }
        return provider.getVideos()
    }
    
    func getVideoBy(id: Int) -> String {
        if let cache = videoCache[id] as? String {
            return cache
        }
        return provider.getVideoBy(id: id)
    }
    
    func downloadVideo(id: Int) {
        if downloadTask.contains(where: { $0 == id }) {
            return
        }
        provider.downloadVideo(id: id)
    }
    
}
