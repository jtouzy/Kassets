//
//  KassetsError.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

enum KassetsError: Error {
    case assetsFileDeserialization
    case configurationFileDeserialization
    case missingAndroidOutput
    case missingIosOutput
}
