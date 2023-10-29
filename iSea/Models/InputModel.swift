//
//  InputModel.swift
//  iSea
//
//  Created by Ilaria Poziello on 29/10/23.
//

import Foundation

struct InputModel: Identifiable {
    var id: UUID = UUID()
    var question: String
    var buttonValues: [String]
}
