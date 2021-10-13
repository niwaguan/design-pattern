//
//  AudioPlayer.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/13.
//

import Foundation


class AudioPlayer {
    lazy var state: AudioPlayerState = AudioPlayerReadyState(player: self)
    
    func change(state: AudioPlayerState) {
        self.state = state
        print("AudioPlayer state change: \(state)")
    }
    
    /// 用户操作
    func clickLock() {
        state.onLock()
    }
    
    func clickPlay() {
        state.onPlay()
    }
    
    func clickNext() {
        state.onNext()
    }
    
    func clickPrevious() {
        state.onPrevious()
    }
    
    /// 其他方法
    func startPlayback() {
        print(#function)
    }
    
    func stopPlayback() {
        print(#function)
    }
    
    func next() {
        print(#function)
    }
    
    func previous() {
        print(#function)
    }
    
}
