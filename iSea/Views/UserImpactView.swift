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
                        Spacer()
                        
                    }
                    
                    
                }
            }
            VStack{
                Text("0.00 Kg")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.teal)
                    .font(.system(size: 55))
                Spacer(minLength: 50)
            }
            
            VStack{
                Text("Amount of savings")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.leading)
                    .bold()
                    .padding(.trailing, 210.0)
                HStack{
                    Text("This is your weekly impact")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .padding([.leading, .bottom, .trailing], 8.0)
                    Spacer(minLength: 165)
                }
                
                VStack{
                    Text("0.00 Kg")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 55))
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
