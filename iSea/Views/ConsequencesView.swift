//
//  ConsequencesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 24/10/23.
//

import SwiftUI

struct ConsequencesView: View {
    
    var consequence: String {
        var randomConsequence: [String]
        switch (consequencesName) {
        case "Doing laundry":
            randomConsequence = LaundryConsequences.randomLaundryConsequence
        case "Showering":
            randomConsequence = ShowerConsequences.randomShowerConsequence
        case "Doing dishes":
            randomConsequence = DishesConsequences.randomDishesConsequence
        case "Cleaning":
            randomConsequence = CleaningConsequences.randomCleaningConsequence
        default:
            randomConsequence = []
        }
        return randomConsequence[Int.random(in: 0...randomConsequence.count-1)]
    }
    
    let consequencesName: String
    
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
                Text(consequence)
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
            ConsequencesView(consequencesName: "Doing laundry")
        }
    

