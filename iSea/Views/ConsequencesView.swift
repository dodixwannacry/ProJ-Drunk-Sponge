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
                            .cornerRadius(3)
                            .foregroundStyle(Color.white)
                         
                    }
                    .cornerRadius(18)
                    .padding(.top)
                    .padding(.horizontal)
                    Spacer()
                }
                VStack{
                    Text("Household cleaning products, while vital for maintaining hygiene, often contain chemicals like surfactants, disinfectants, and fragrances. When these chemicals go down our drains, they pose a significant threat to aquatic ecosystems, compromising water quality and the balance of aquatic life. One major concern is nutrient pollution, with products containing phosphates and nitrogen compounds. These substances, once in water bodies, contribute to nutrient pollution, fueling algal blooms and oxygen depletion, which is detrimental to marine life. Additionally, microplastics are an issue, as some cleaning products contain them, and these tiny particles end up in our oceans, worsening the problem of marine microplastic pollution.")
                }
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
    

