//
//  Singleton.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/30.
//

import Foundation

class Singleton {
    static var shared: Singleton = {
        let instance = Singleton()
        return instance
    }()
    
    /// 将构造函数私有化，不允许外面再次创建
    private init() {}
    
    func someBusinessLogic() {
        print("Singleton someBusinessLogic")
    }
}

extension Singleton: NSCopying {
    /// 将复制方法返回自己， 避免通过复制创建新对象
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
