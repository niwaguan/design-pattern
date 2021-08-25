//
//  Client.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

class Client {
    static func testFactoryMethod() {
        var creator: Creator = ConcreteCreator1()
        print(creator.someOperation());
        
        print("---切换Creator---")
        
        creator = ConcreteCreator2()
        print(creator.someOperation())
    }
}
