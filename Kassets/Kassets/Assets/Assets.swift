//
//  Assets.swift
//  Kassets
//
//  Created by Jérémy TOUZY on 03/04/2020.
//  Copyright © 2020 jtouzy. All rights reserved.
//

//
//  JSON assets example
//
//  {
//    "colors": {
//      "primary": "#BCBCBC"
//    }
//  }
//

class Assets: Decodable {
    let colors: [String: String]
}
