//
//  Kassets+Generate.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

import ArgumentParser
import Foundation

extension Kassets {
    struct Generate: ParsableCommand {
        @Argument(
            default: .all,
            help: "Generation kind"
        )
        var kind: GenerationKind

        @Option(
            name: [.customLong("config"), .customShort("c")],
            default: "kassets.config.json"
        )
        var configFilePath: String

        @Option(
            name: [.customLong("input"), .customShort("i")],
            default: "kassets.json"
        )
        var inputFilePath: String

        func run() throws {
            try GenerateExecutor(
                for: kind,
                using: configFilePath,
                input: inputFilePath
            ).run()
        }
    }
}
