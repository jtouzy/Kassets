//
//  GenerateExecutor.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

import Foundation

class GenerateExecutor {
    typealias GenerationOptions = (ios: String, android: String)

    let assets: Assets
    let configuration: Configuration
    let kind: GenerationKind

    init(for kind: GenerationKind, using configFilePath: String, input inputFilePath: String) throws {
        self.kind = kind
        configuration = try ConfigurationReader().readFromFile(at: configFilePath)
        assets = try AssetsReader().readFromFile(at: inputFilePath)
    }

    func run() throws {
        if [.all, .colors].contains(kind) {
            try generateColors()
        }
    }

    func verifyConfiguration<K, V>(
        kind: GenerationKind, assets: Dictionary<K, V>, configuration: ConfigurationWithOutputs
    ) throws -> GenerationOptions? {
        guard !assets.isEmpty else {
            print("Skipping \(kind.rawValue) generation, no \(kind.rawValue) given in assets.")
            return nil
        }
        guard let iosOutput = configuration.outputs.ios else {
            throw KassetsError.missingIosOutput
        }
        guard let androidOutput = configuration.outputs.android else {
            throw KassetsError.missingAndroidOutput
        }
        return (ios: iosOutput, android: androidOutput)
    }
}
