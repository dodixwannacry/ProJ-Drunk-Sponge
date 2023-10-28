//
//  ConsequencesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 24/10/23.
//

import SwiftUI

struct ConsequencesView: View {
    
    let consequence = Consequences()
    
    var body: some View {
        NavigationStack {
            ScrollView() {
                VStack {
                    Text("Consequences")
                        .font(.largeTitle)
                        .bold()
                    
                        .frame(width: 240)
                    ZStack(alignment: .topLeading) {
                        Image("consequences")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 170)
                        
                        
                        Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                            .frame(height: 175)
                            .cornerRadius(25)
                            .foregroundStyle(Color.white)
                         
                    }
                    .cornerRadius(18)
                    .padding(.top)
                    .padding(.horizontal)
                    Spacer()
                    
                }
                Text(consequence.randomConsequenceArray[Int.random(in: 0...3)])
            
                
                .cornerRadius(5)
                .multilineTextAlignment(.center)
                .padding(.top)
                Spacer(minLength: 180)
            }
        }
    }
}
        #Preview {
            ConsequencesView()
        }
    

