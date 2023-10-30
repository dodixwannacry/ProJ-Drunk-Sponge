//
//  UserImpactView.swift
//  iSea
//
//  Created by Ilaria Poziello on 20/10/23.
//

import SwiftUI
import SwiftData

struct UserImpactView: View {
    
    static var calculateOneWeekAgo: Date {
      return Calendar.current.date(byAdding: .weekOfYear, value: -1, to: Date()) ?? Date()
    }
    
    var calculateWeeklyWPI: Double {
      return allImpactsForTheWeek
                .map{ WPICalculator.calculate(impactName: $0.activity, impactValue: $0.input) }
                .reduce(0, +)
    }
    
    
    @Query ()
    var allImpactsForTheWeek: [ImpactDBModel]

   
    
        
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
                    Text("\(String(format: "%.2f",calculateWeeklyWPI)) kg")
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
