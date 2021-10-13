//
//  AudioPlayerLockedState.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/13.
//

import Foundation

class AudioPlayerLockedState: AudioPlayerState {
    unowned var player: AudioPlayer
    
    var previousState: AudioPlayerState
    
    required init(player: AudioPlayer) {
        self.player = player
        previousState = player.state
    }
    
    func onLock() {
        // 恢复之前的状态
        player.change(state: previousState)
    }
    
    func onPlay() {
        // lock 状态下不响应
    }
    
    func onNext() {
        // lock 状态下不响应
    }
    
    func onPrevious() {
        // lock 状态下不响应
    }

}
