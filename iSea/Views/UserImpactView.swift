//
//  UserImpactView.swift
//  iSea
//
//  Created by Ilaria Poziello on 20/10/23.
//

import SwiftUI

struct UserImpactView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Your Impact")
                    .font(.largeTitle)
                    .bold()
                Text("Amount of Pollution")
                    .bold()
                   Spacer()
                
            }
        }
    }
}
#Preview {
    UserImpactView()
}
