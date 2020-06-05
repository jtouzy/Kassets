//
//  Configuration.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

//
//  JSON configuration example
//
//  {
//    "colors": {
//      "outputs": {
//        "ios": "/path",
//        "android": "/path"
//      }
//    }
//  }
//

protocol ConfigurationWithOutputs {
    var outputs: AssetConfigurationOutput { get }
}

class Configuration: Decodable {
    let colors: ColorsConfiguration
}

class AssetConfigurationOutput: Decodable {
    let ios: String?
    let android: String?
}

class ColorsConfiguration: Decodable, ConfigurationWithOutputs {
    let outputs: AssetConfigurationOutput
}
