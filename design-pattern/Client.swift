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
    
    static func testComposite() {
        print("😁组合模式")
        let editor = Editor()
        editor.addDot(at: Point(x: 3, y: 3))
        editor.addCircle(at: Point(x: 6, y: 6), radius: 3)
        editor.draw()
    }
    
    static func testDecorator() {
        print("😁装饰者模式")
        var notifier: Notifier = MailNotifier()
        let enableSMS = true, enableWechat = true, enableQQ = true
        if enableSMS {
            notifier = SMSDecorator(wrapped: notifier)
        }
        if enableWechat {
            notifier = WeChatDecorator(wrapped: notifier)
        }
        if enableQQ {
            notifier = QQDecorator(wrapped: notifier)
        }
        notifier.send(message: "快来看啊，iPhone13大降价!")
    }
    
    static func testFacade() {
        print("😁外观模式")
        
        let format = "ogg"
        
        let path = "/users/niwaguan/desktop/1.mp4"
        let file = VideoFile(path: path)
        let sourceCodec = CodecFactory().extract(file: file)
        var targetCodec: Codec!
        if format == "mp4" {
            targetCodec = MPEG4CompressionCodec()
        } else if format == "ogg" {
            targetCodec = OggCompressionCodec()
        }
        let buffer = sourceCodec.decode(file: file)
        let result = targetCodec.encode(buffer: buffer)
        print("我了解了这个转换库的大多数对象，才能将一个视频转换为我想要的格式，好累啊！！！\(result)")
        
        print("突然发现这个库，提供了外观：VideoConverter")
        
        let r = VideoConverter.covert(video: path, to: format)
        print("视频格式转换，so easy：\(r)")
    }
    
    static func testFlyweight() {
        print("😁享元模式")
        let forest = Forest()
        forest.grow()
        forest.grow()
        forest.draw()
        print("这里有很多树，但是占用的内存很小")
    }
    
    static func testProxy() {
        print("😁代理（Proxy）模式")
        let videoProvider: VideoProvider = TencentVideoProvider()
        let proxy = CacheVideoProvider(provider: videoProvider)
        print("我通过代理获取到了数据, \(proxy.getVideos())")
    }
    
    static func testChainOfResponsibility() {
        print("😁责任链模式")
        let handler = MonkeyHandler()
        handler.setNext(SquirrelHandler()).setNext(DogHandler())
        let food = ["Nut", "Banana", "Cup of coffee", "MeatBall"]
        food.forEach { it in
            let r = handler.handle(request: it)
            print(r ?? "\(it) NOT HANDLED")
        }
    }
    
    static func testCommand() {
        print("😁命令模式")
        
        let invoker = Invoker()
        invoker.onStart = SimpleCommand(playload: "Say hi!")
        
        let receiver = Receiver()
        let complexCommand = ComplexCommand(receiver: receiver)
        complexCommand.a = "Just A"
        complexCommand.b = "Just B"
        
        invoker.onFinish = complexCommand
        
        invoker.doSomethingImportant()
    }
    
    static func testIterator() {
        print("😁迭代器模式")
        
        let wordsCollection = WordsCollection()
        wordsCollection.append("A")
        wordsCollection.append("B")
        wordsCollection.append("C")
        
        //        let iterator = wordsCollection.makeIterator()
        for it in wordsCollection {
            print("word \(it)")
        }
    }
    
    static func testMediator() {
        print("😁中介者模式")
        
        let c1 = Component1()
        let c2 = Component2()
        
        let mediator = ConcreteMediator(c1, c2)
        
        print("Client triggers operation A.")
        c1.doA()
        
        print("\nClient triggers operation D.")
        c2.doD()
        
        print(mediator)
    }
    
    static func testMemento() {
        print("😁备忘录模式")
        let originator = Originator(state: "Super-duper-super-puper-super.")
        let caretaker = Caretaker(originator: originator)
        
        caretaker.backup()
        originator.doSomething()

        caretaker.backup()
        originator.doSomething()

        caretaker.backup()
        originator.doSomething()

        print("\n")
        caretaker.showHistory()

        print("\nClient: Now, let's rollback!\n\n")
        caretaker.undo()

        print("\nClient: Once more!\n\n")
        caretaker.undo()
    }
    
    static func testObserver() {
        print("😁观察者模式")
        let subject = Subject()
        
        let o1 = GreaterthenThreeObserver()
        let o2 = LessthenThreeObserver()
        
        subject.attach(o1)
        subject.attach(o2)
        
        subject.someBusinessLogic()
        
        subject.detach(o2)
        
        subject.someBusinessLogic()
    }
    
    static func testState() {
        print("😁状态模式")
        let player = AudioPlayer()
        player.clickPlay()
        player.clickNext()
        player.clickLock()
        player.clickLock()
    }
    
    static func testStrategy() {
        print("😁策略模式")
        let navigator = Navigator()
        navigator.buildWalkRoute()
        navigator.buildRoadRoute()
        navigator.buildPublicTransportRoute()
    }
    
    static func testVisitor() {
        print("😁访问者模式")
        let square = Square()
        square.color = RedColor()
        
        let circle = Circle()
        circle.r = 1.0
        
        let visitor = XMLExportVisitor()
        square.accept(visitor: visitor)
        circle.accept(visitor: visitor)
    }
}
