//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // 1. Locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        
        // 5. Return ready to use data
        return decodedData
    }
}
