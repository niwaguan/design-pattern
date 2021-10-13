//
//  AudioPlayerState.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/13.
//

import Foundation


protocol AudioPlayerState: AnyObject {
    var player: AudioPlayer { get set }
    
    init(player: AudioPlayer)
    
    func onLock()
    func onPlay()
    func onNext()
    func onPrevious()
}

