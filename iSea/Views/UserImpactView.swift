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
                    Text("Amount of Pollution")
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding(.trailing, 200.0)
                        
                        
                        
                    HStack{
                        Text("This is your weekly impact")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .padding([.leading, .bottom, .trailing], 8.0)
                        Spacer(minLength: 170)
                            
                    }
                        Spacer()
                       }

                }
            }
        VStack{
            Text("This is your weekly impact")
        }
            
        }
    }
#Preview {
    UserImpactView()
}
