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
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Amount of Pollution")
                        .font(.system(size: 24))
                        .bold()
                        Spacer()
                        Text("This is your weekly impact")
                        Spacer()
                       }
                }
            }
            
        }
    }
#Preview {
    UserImpactView()
}
