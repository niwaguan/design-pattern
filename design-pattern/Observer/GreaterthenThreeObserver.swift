//
//  GreaterthenThreeObserver.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation

class GreaterthenThreeObserver: Observer {
    func update(subject: Subject) {
        if (subject.state > 3) {
            print("GreaterthenThreeObserver: state changed: \(subject.state)")
        }
    }
}
