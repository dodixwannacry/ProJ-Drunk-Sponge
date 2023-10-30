//
//  ConsequencesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 24/10/23.
//

import SwiftUI

struct ConsequencesView: View {
    
    let consequence = CleaningConsequences() //ne ho messa una a caso giusto per far funzionare la preview e fare altro. Vedi come far fare in modo tale che in base alla pagina dell'attività in cui ti trovi, le conseguenze siano correlate a quell'attività
    
    var body: some View {
        NavigationStack {
            ScrollView() {
                VStack {
                    HStack {
                        Spacer()
                        Text("Curiosities")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        
                        .frame(width: 200)
                        
                    }
                    Spacer()
                        .frame(height: 2)
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
                Text(consequence.randomCleaningConsequence[Int.random(in: 0...3)])
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                    
            
                
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
    

