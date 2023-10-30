//
//  iSeaApp.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
import SwiftData

@main
struct iSeaApp: App {
    let modelContainer: ModelContainer
    
    var body: some Scene {
        WindowGroup {
            ActivitiesView().modelContainer(modelContainer)
        }
    }
    
    init() {
        do {
            modelContainer = try ModelContainer(for: ImpactDBModel.self)
        } catch {
            fatalError("Could not initialize ModelContainer")
        }
        
    }
}
