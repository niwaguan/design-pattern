//
//  AudioPlayerReadyState.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/13.
//

import Foundation

class AudioPlayerReadyState: AudioPlayerState {
    unowned var player: AudioPlayer
    
    required init(player: AudioPlayer) {
        self.player = player
    }

    func onLock() {
        player.change(state: AudioPlayerLockedState(player: player))
    }
    
    func onPlay() {
        player.startPlayback()
        player.change(state: AudioPlayerPlayingState(player: player))
    }
    
    func onNext() {
        player.next()
    }
    
    func onPrevious() {
        player.previous()
    }
    
}
