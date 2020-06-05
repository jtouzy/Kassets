//
//  AssetsReader.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

import Foundation

class AssetsReader {
    lazy var fileManager = FileManager.default

    func readFromFile(at path: String) throws -> Assets {
        guard
            let data = fileManager.contents(atPath: path),
            let config = try? JSONDecoder().decode(Assets.self, from: data)
        else {
            throw KassetsError.assetsFileDeserialization
        }
        return config
    }
}
