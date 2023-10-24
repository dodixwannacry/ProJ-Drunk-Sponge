//
//  ActivitiesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI


struct ActivitiesView: View {
    
    var viewModel = ActivitiesViewModel()
    
    var body: some View {
            NavigationStack {
                HStack {
                    Text("Activities").font(.largeTitle).bold()
                        Spacer()
                        .frame(width: 180)
                    
                    NavigationLink(destination: UserImpactView()){
                            Image(systemName: "chart.bar.fill")
                                .font(.subheadline)
                                .foregroundColor(.black)
                    }
                }
                
                ScrollView() {
                    VStack() {
                        ForEach(viewModel.activity) { activity in
                            NavigationLink(destination: ActivityChartView().navigationBarTitle(activity.name)) {
                                ZStack(alignment: .bottomLeading) {
                                    Image(activity.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
                                        .grayscale(1)
                                        
                                    Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.6)], startPoint: .top, endPoint: .bottom))
                                    VStack(alignment: .leading) {
                                        Text(activity.name).font(.title).bold()
                                    }
                                        .foregroundStyle(Color.white)
                                        .padding()
                                }

                            }
                                .cornerRadius(15)
                                .padding(.horizontal)
                        }
                    }
                }
                    
        }
    }
}

#Preview {
    ActivitiesView()
}
