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
    
    static func testBuiler() {
        print("😁建造者")
        let smallHouseBuilder = SmallHouseBuilder()
        smallHouseBuilder.buildDoors()
        smallHouseBuilder.buildWalls()
        smallHouseBuilder.buildRoof()
        smallHouseBuilder.buildGarden()
        smallHouseBuilder.buildWindows()
        let smallHouse = smallHouseBuilder.getResult()
        print("我有一个房子：\(smallHouse)\n")
        
        print("现在我想要一个宫殿")
        let palaceBuilder = PalaceBuilder()
        palaceBuilder.buildDoors()
        palaceBuilder.buildWalls()
        palaceBuilder.buildRoof()
        palaceBuilder.buildGarden()
        palaceBuilder.buildWindows()
        let palace = palaceBuilder.getResult()
        print("真好，自己写代码就可以随心所欲，我有了大宫殿：\(palace)\n")
        
        print("要是感觉自己创建比较麻烦，可以请一个管理者")
        let director = Director()
        director.updateBuilder(smallHouseBuilder)
        director.makeHouse()
        let antherHouse = smallHouseBuilder.getResult()
        print("嗯，这样可以更简洁。我有一个房子：\(antherHouse)\n")
    }
    
    static func testPrototype() {
        print("😁原型模式")
        let cat = Cat(name: "花花", color: "White")
        print(cat)
        
        if let copy = cat.copy() as? Cat {
            print(copy)
        }
    }
    
    static func testSingleton() {
        print("😁单例模式")
        Singleton.shared.someBusinessLogic()
        let copy = Singleton.shared.copy() as! Singleton
        if copy === Singleton.shared {
            print("我想拷贝单例对象，但没有成功。")
        }
    }
    
    static func testAdapter() {
        print("😁适配器模式")
        print("我有一个XMLProcesser，它可以和满足接口 XMLAnalyzer 的对象一起合作")
        let xmlProcessor = XMLProcesser()
        xmlProcessor.analyzer = JSONServiceAdapter()
        xmlProcessor.processXML()
    }
    
    static func testBridge() {
        print("😁桥接模式")
        let shape = Square()
        print(shape)
    }
}
