//
//  JSONServiceAdapter.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/1.
//

import Foundation

/// 原有的JSONService由于数据格式不兼容，无法被XMLProcesser直接使用，这里使用
/// adapter进行适配
class JSONServiceAdapter: XMLAnalyzer {
    
    let service = JSONService()
    
    func analyzeGroups(of xml: XML) -> Int {
        /// 数据格式的转换
        let json = JSON(content: xml.content)
        return service.groups(of: json)
    }
    
    func groups(of id: Int, in xml: XML) -> Int {
        let json = JSON(content: xml.content)
        return service.findGroup(with: id, of: json)
    }
    
}
