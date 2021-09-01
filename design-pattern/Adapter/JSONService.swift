//
//  JSONService.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/1.
//

import Foundation

struct JSON {
    let content: String
}

/// json格式的数据处理服务。
class JSONService {
    
    /// 获取数据分组数量
    func groups(of json: JSON) -> Int {
        return 3
    }
    
    /// 对一个特定分组进行统计
    func findGroup(with id: Int, of json: JSON) -> Int {
        return 10
    }
}
