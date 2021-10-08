//
//  WordsCollection.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/8.
//

import Foundation

class WordsCollection {
    fileprivate var items = [String]()
    func append(_ item: String) {
        items.append(item)
    }
}

class WordsCollectionIterator: IteratorProtocol {
    private var index = -1
    func next() -> String? {
        index += 1
        return index < collection.items.count ? collection.items[index] : nil
    }
    
    private let collection: WordsCollection
    init(_ collection: WordsCollection) {
        self.collection = collection
    }
}

extension WordsCollection: Sequence {
    func makeIterator() -> some IteratorProtocol {
        return WordsCollectionIterator(self)
    }
}
