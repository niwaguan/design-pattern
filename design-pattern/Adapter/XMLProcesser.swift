//
//  XMLProcesser.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/1.
//

import Foundation

/// XML 数据
struct XML {
    let content: String
}

/// XML  格式处理器。
/// 其中需要数据分析的接口在XMLAnalyzer接口中声明
class XMLProcesser {
    var analyzer: XMLAnalyzer?
    
    func processXML() {
        let xml = XML(content: "<xml>....<xml>")
        print("我现在想分析XML的数据")
        if let an = analyzer {
            let groups = an.analyzeGroups(of: xml)
            print("嗯，他有\(groups)组数据")
            let count = an.groups(of: 0, in: xml)
            print("哈哈，现在id为0的分组有\(count)个")
        } else {
            print("但是我没有分析器帮助我")
        }
    }
}
