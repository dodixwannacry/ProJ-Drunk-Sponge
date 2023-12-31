//
//  ActivitiesView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI


struct ActivitiesView: View {
    @ObservedObject var viewModel = ActivitiesViewModel()
    @State private var isSelected: Bool = false // Variabile di stato per tenere traccia dello stato selezionato

    var body: some View {
            NavigationStack {
                HStack {
                    Text("Activities").font(.largeTitle).bold()
                        Spacer()
                        .frame(width: 180)
                    
                    NavigationLink(destination: UserImpactView()){
                        Image(systemName: "chart.bar.fill")
                            .foregroundColor(Color.teal)
                                .font(.subheadline)
                                
                    }
                }
                
                ScrollView() {
                    VStack() {
                        ForEach(viewModel.activity) { activity in
                            
                            NavigationLink(destination: ActivityChartView(viewModel: viewModel, activity: activity)) {
                                ZStack(alignment: .bottomLeading) {
                                    Image(activity.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
                                        .grayscale(1)
                                        .background(isSelected ? Color.teal : Color.teal) // Cambia il colore in base a isSelected
                                                    .onTapGesture {
                                                        isSelected.toggle() // Cambia lo stato quando la Card viene cliccata
                                                    }
                                    
                                        
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

