//
//  ViewController.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/8/25.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Client.testVisitor()
        Client.testStrategy()
        Client.testState()
        Client.testObserver()
        Client.testMemento()
        Client.testMediator()
        Client.testIterator()
        Client.testCommand()
        Client.testChainOfResponsibility()
        Client.testProxy()
        Client.testFlyweight()
        Client.testFacade()
        Client.testDecorator()
        Client.testComposite()
        Client.testBridge()
        Client.testAdapter()
        Client.testSingleton()
        Client.testPrototype()
        Client.testBuiler()
        Client.testAbstructFactory()
        Client.testFactoryMethod()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

