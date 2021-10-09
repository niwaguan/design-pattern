//
//  Observer.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/9.
//

import Foundation

protocol Observer: AnyObject {
    func update(subject: Subject)
}
