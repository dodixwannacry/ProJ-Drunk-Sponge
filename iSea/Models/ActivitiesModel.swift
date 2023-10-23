//
//  ActivitiesModel.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import Foundation
import SwiftUI

struct Activities: Identifiable {
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var WPI:Float
}
