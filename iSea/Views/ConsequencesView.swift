//
//  ConsequencesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 24/10/23.
//

import SwiftUI

struct ConsequencesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Consequences")
                    .font(.largeTitle)
                    .bold()
                
                    .frame(width: 250)
                ZStack(alignment: .topLeading) {
                    Image("consequences")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 180)
                    
                    
                    Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                        .frame(height: 185)
                        .cornerRadius(29)
                    VStack(alignment: .leading) {
                        Text("The consequences on sea pollution").font(.largeTitle)
                            .bold()
                            .padding()
                    }
                    
                    .foregroundStyle(Color.white)
                    .padding()
                }
                .cornerRadius(18)
                .padding(.top)
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}
        #Preview {
            ConsequencesView()
        }
    

