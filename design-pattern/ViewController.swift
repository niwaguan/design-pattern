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
        Client.testFactoryMethod()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

