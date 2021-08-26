//
//  Client.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Foundation

class Client {
    static func testFactoryMethod() {
        print("😁工厂方法")
        var creator: Creator = ConcreteCreator1()
        print(creator.someOperation());
        
        print("---切换Creator---")
        
        creator = ConcreteCreator2()
        print(creator.someOperation())
    }
    
    static func testAbstructFactory() {
        print("😁抽象工厂")
        func homeWithFactory(factory: FurnitureFactory) {
            let chair = factory.createChair()
            let sofa = factory.createSofa()
            print("装修完毕")
            print("椅子\(chair.legs)条腿")
            chair.sitOn()
            print("沙发的颜色是：\(sofa.color), 看看是否可以折叠：\(sofa.foldable)")
            print("有家的感觉真好....\n\n")
        }
        print("我要一套现代风格的家具")
        homeWithFactory(factory: ModernStyleFurnitureFactory())
        print("我还想试试中式风格")
        homeWithFactory(factory: ChineseStyleFurnitureFactory())
        print("也许将来，我还想换....换成... 没想好")
        homeWithFactory(factory: XXXStyleFurnitureFactory())
    }
}
