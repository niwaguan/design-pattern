//
//  MailNotifier.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/17.
//

import Foundation

class MailNotifier: Notifier {
    func send(message: String) {
        print("I'm MailNotifier, now i'm sending message: \(message)")
    }
}
