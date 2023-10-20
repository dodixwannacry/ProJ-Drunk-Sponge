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
                Text("Activities").font(.largeTitle).bold()
                ScrollView() {
                    VStack() {
                        ForEach(viewModel.activity) { activity in
                            NavigationLink(destination: ActivityChartView()) {
                                ZStack(alignment: .bottomLeading) {
                                    Image(activity.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
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
