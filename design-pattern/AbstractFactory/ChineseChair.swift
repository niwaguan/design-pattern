//
//  ChineseChair.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/26.
//

import Foundation

class ChineseChair: Chair {
    var legs: Int {
        return 4
    }
    
    func sitOn() {
        print("坐在ChineseChair，怎么感觉硬邦邦的...")
    }
    
    
}
