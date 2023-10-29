//
//  ActivityChartView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
import Foundation

struct ActivityChartView: View {
    
    
    @ObservedObject var viewModel = ActivitiesViewModel()
    @State private var viewButton = false
    @Environment(\.presentationMode) var presentationMode
    
    var activity: Activities
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    var body: some View {
        NavigationStack {
            VStack {
                
                NavigationLink(destination: ConsequencesView()){
                    ZStack(alignment: .topLeading) {
                        Image("cristian-palmer-XexawgzYOBc-unsplash")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 170)
                        
                        
                        Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                            .frame(height: 200)
                        
                        Text("The consequences on sea pollution").font(.largeTitle).bold().padding()
                        
                        
                            .foregroundStyle(Color.white)
                            .padding()
                    }
                    .cornerRadius(20)
                    .padding(.top)
                    .padding(.horizontal)
                }
                HStack {
                    Spacer().frame(width: 5)
                    Text("Today")
                        .foregroundColor(Color.gray)
                        .bold()
                        .padding()
                    Spacer()
                    Text(" \(dateFormatter.string(from: Date()))")
                        .bold()
                        .foregroundColor(Color.gray)
                    Spacer().frame(width: 20)
                }
                HStack {
                    Button {
                        viewButton = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding(.all, 7)
                            .background(.teal)
                            .bold()
                            .foregroundColor(.white)
                            .cornerRadius(22)
                            .padding()
                            .frame(width: 100)
                    }
                    Spacer()
                        .frame(width: 15)
                    HStack(alignment: .center ,content: {
                        Text("0.00 Kg")
                            .font(.system(size: 60))
                            .font(.largeTitle)
                            .foregroundColor(Color.teal)
                    })
                    Spacer(minLength: 10)
                       
                }
                
                .sheet(isPresented: $viewButton) {
                    switch (activity.name) {
                    case "Doing laundry":
                        InputView(inputViewModel: InputModel(question: "How many loads of laundry have you done today?", buttonValues: ["1","2","3","4","5","6"]))
                    case "Showering":
                        InputView(inputViewModel: InputModel(question: "How long did your last shower last?", buttonValues: ["5 min","10 min","15 min","20 min","25 min","30 min"]))
                    case "Doing dishes":
                        InputView(inputViewModel: InputModel(question: "How much time did you spend doing the dishes today?", buttonValues: ["5 min","10 min","15 min","20 min","25 min","30 min"]))
                    case "Cleaning":
                        InputView(inputViewModel: InputModel(question: "How many sessions of cleaning have you done today?", buttonValues: ["1","2","3","4","5","6"]))
                    default:
                        EmptyView()
                    }
                }
                Spacer()
                
            }
            
           
        }
        .navigationTitle(activity.name)
        
        
    }
}





#Preview {
    ActivityChartView(activity: Activities(name: "Doing laundry", imageName: "Laundry",WPI: 0.36))
}




