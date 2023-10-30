//
//  ImpactDBModel.swift
//  iSea
//
//  Created by Ilaria Poziello on 29/10/23.
//

import SwiftData
import Foundation

@Model
class ImpactDBModel {
    var date: Date
    var activity: String
    var input: String
    
    init(date: Date, activity: String, input: String) {
        self.date = date
        self.activity = activity
        self.input = input
    }
}
