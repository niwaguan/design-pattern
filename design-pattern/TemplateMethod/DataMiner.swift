//
//  DataMiner.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/16.
//

import Foundation

class DataMiner {
    /// 模板方法，以特定步骤完成一个目标。这里是数据挖掘
    /// 不同子类可以定制每个步骤
    func mine(at path: String) {
        // 1. 打开文件
        let file = openFile(at: path)
        // 2. 获取文件数据
        guard let data = extractData(file: file) else {
            print("can not get data at file \(file)")
            return
        }
        // 3. 解析数据
        guard let result = parse(rawData: data) else {
            print("can not parse data")
            return
        }
        // 4. 发送数据
        send(report: result)
        // 5. 关闭文件
        closeFile(file)
    }
    
    func openFile(at path: String) -> String {
        return "File at \(path)"
    }
    
    func extractData(file: String) -> Data? {
        return file.data(using: .utf8)
    }
    
    func parse(rawData: Data) -> String? {
        return String(data: rawData, encoding: .utf8)
    }
    
    func send(report: String) {
        print("sending report to server.(\(report)")
    }
    
    func closeFile(_ file: String) {
        print("Close file \(file)")
    }
}
