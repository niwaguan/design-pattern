//
//  XMLAnalyzer.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/9/1.
//

import Foundation

/// 声明XMLProcesser需要的接口
protocol XMLAnalyzer {
    /// 分析一个XML的数据分组数量
    func analyzeGroups(of xml: XML) -> Int
    /// 获取指定分组数量
    func groups(of id: Int, in xml: XML) -> Int
}
