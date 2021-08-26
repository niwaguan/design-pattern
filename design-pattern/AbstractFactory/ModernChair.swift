//
//  ModernChair.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

class ModernChair: Chair {
    var legs: Int {
        return 4
    }
    
    func sitOn() {
        print("坐在ModernChair上，感觉舒服")
    }
    
    
}
