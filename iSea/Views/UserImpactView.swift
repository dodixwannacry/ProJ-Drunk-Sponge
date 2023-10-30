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
                    .padding(.bottom, 10.0)
            }
            VStack(alignment: .leading) {
                VStack {
                    Text("Amount of daily Pollution")
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding(.trailing)
                }
                Spacer()
            }
            VStack{
                Text("0.00 Kg")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.teal)
                    .font(.system(size: 65))
                Spacer(minLength: 50)
            }
            Spacer()
            
            VStack{
                Text("Amount of weekly Pollution")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.leading)
                    .bold()
                    .padding(.trailing)
                Spacer(minLength: 100)
                VStack{
                    Text("0.00 Kg")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 65))
                    Spacer(minLength: 15)
                }
            }
            Spacer(minLength: 200)
            
        }
    }
}
#Preview {
    UserImpactView()
}
