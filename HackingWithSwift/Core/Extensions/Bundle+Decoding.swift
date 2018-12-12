//
//  Bundle+Decoding.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from filename: String) -> T {
        guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Failed to locate \(filename) in app bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(filename) in app bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(type, from: data) else {
            fatalError("Failed to decode projects.json from app bundle.")
        }
        
        return loaded
    }
}
