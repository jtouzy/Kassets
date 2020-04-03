//
//  Kassets.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

import ArgumentParser

struct Kassets: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "An utility to generate common assets for Android and iOS",
        subcommands: [Generate.self],
        defaultSubcommand: Generate.self
    )
}
