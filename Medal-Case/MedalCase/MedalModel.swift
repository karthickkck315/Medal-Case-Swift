//
//  MedalModel.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import Foundation
import UIKit

struct MedalCategory { //Section
    let name: String
    var medalItems: [MedalItems]
}

struct MedalItems { //Items
    let image: String
    let medalName: String
    let description: String
}

