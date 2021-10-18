//
//  PDFMiner.swift
//  design-pattern
//
//  Created by Gaoyang on 2021/10/16.
//

import Foundation

class PDFMiner: DataMiner {
    override func extractData(file: String) -> Data? {
        guard let reg = try? NSRegularExpression(pattern: ".pdf$", options: [.caseInsensitive]),
              reg.matches(in: file, options: [], range: NSRange(location: 0, length: file.count)).count > 0,
                let result = super.extractData(file: file) else {
            return nil
        }
        return "PDF Data \(result)".data(using: .utf8)
    }
    
    override func parse(rawData: Data) -> String? {
        guard let string = String(data: rawData, encoding: .utf8) else {
            return "Can not parse PDF data."
        }
        return "Parse PDF data to \(string)."
    }
}
