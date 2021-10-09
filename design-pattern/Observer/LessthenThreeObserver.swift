//
//  LessthenThreeObserver.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation

class LessthenThreeObserver: Observer {
    func update(subject: Subject) {
        if (subject.state < 3) {
            print("LessthenThreeObserver: state changed: \(subject.state)")
        }
    }
}
