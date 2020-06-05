//
//  GenerateExecutor+Colors.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

extension GenerateExecutor {
    func generateColors() throws {
        let colorAssets = assets.colors
        guard let options = try verifyConfiguration(
            kind: .colors, assets: colorAssets, configuration: configuration.colors
        ) else {
            return
        }
        // TODO
    }
}
