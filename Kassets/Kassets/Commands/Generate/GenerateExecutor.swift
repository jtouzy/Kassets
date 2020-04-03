//
//  GenerateExecutor.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

import Foundation

class GenerateExecutor {
    let kind: GenerationKind
    let configFilePath: String
    lazy var fileManager = FileManager.default
    lazy var execDirectory = fileManager.currentDirectoryPath

    init(for kind: GenerationKind, using configFilePath: String) {
        self.kind = kind
        self.configFilePath = configFilePath
    }

    func run() throws {
        print("Execution dir: \(execDirectory)")
        print("Config file path: \(configFilePath)")
        print("Generation kind: \(kind)")
    }
}
