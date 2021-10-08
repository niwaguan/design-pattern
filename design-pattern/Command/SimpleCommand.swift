//
//  SimpleCommand.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/29.
//

import Foundation

class SimpleCommand: Command {
    
    private var playload: String
    init(playload: String) {
        self.playload = playload
    }
    
    
    func execute() {
        print("SimpleCommand: See, I can do simple things like printing (\(playload))")
    }
    
}
