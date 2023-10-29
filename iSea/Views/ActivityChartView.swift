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
    @State private var showAlert = false
    
    var activity: Activities
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
    var randomTip: String {
        var randomTips: [String]
        switch (activity.name) {
        case "Doing laundry":
            randomTips = LaundryTips.randomTips
        case "Showering":
            randomTips = ShowerTips.randomTips
        case "Doing dishes":
            randomTips = DishesTips.randomTips
        case "Cleaning":
            randomTips = CleaningTips.randomTips
        default:
            randomTips = []
        }
        return randomTips[Int.random(in: 0...randomTips.count-1)]
    }
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 1){
                
                NavigationLink(destination: ConsequencesView()){
                    ZStack(alignment: .topLeading) {
                        Image("cristian-palmer-XexawgzYOBc-unsplash")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 360, height: 187)
                        
                        
                        Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                            .frame(width: 360, height: 187)
                        
                        Text("The consequences of \(activity.name.lowercased()) on sea pollution").font(.title).bold()
                            .foregroundStyle(Color.white)
                            .padding(.all, 30)
                        
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
                        .frame(width: 15)
                    HStack(alignment: .center ,content: {
                        Text("0.00 Kg")
                            .font(.system(size: 60))
                            .font(.largeTitle)
                            .foregroundColor(Color.teal)
                        
                        Button(action: {
                            showAlert = true
                        }) {
                            Image(systemName: "info")
                                .resizable()
                                .frame(width: 9, height: 10)
                                .padding(.all, 3)
                                .background(.gray)
                                .bold()
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .padding(.bottom, 20)
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("What does WPI mean?"),
                                message: Text("WPI is a formula that allows to calculate the kgs of pollution.\n WPI = (water)x(shjk)"),
                                dismissButton: .default(Text("Back"))
                            )
                        }
                        
                        
                        
                    })
                    Spacer(minLength: 10)
                    
                    
                }
                Spacer()
                    .frame(height: 15)
                
                
            }
            
            
            VStack {
                Spacer()
                    .frame(height: 28)
    
                VStack {
                    HStack {
                        Spacer()
                            .frame(width: 18)
                        Text("0.00 kgs")
                            .foregroundStyle(.white)
                        Spacer()
                        Text("10/10/2023")
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 18)
                    }
                    Divider()
                        .frame(height: 1)
                        .overlay(.white)
                        .padding(.horizontal, 24)
                    HStack {
                        Spacer()
                            .frame(width: 18)
                        Text("0.00 kgs")
                            .foregroundStyle(.white)
                        Spacer()
                        Text("10/10/2023")
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 18)
                    }
                    Divider()
                        .frame(height: 1)
                        .overlay(.white)
                        .padding(.horizontal, 24)
                    HStack {
                        Spacer()
                            .frame(width: 18)
                        Text("0.00 kgs")
                            .foregroundStyle(.white)
                        Spacer()
                        Text("10/10/2023")
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 18)
                    }
                    Divider()
                        .frame(height: 1)
                        .overlay(.white)
                        .padding(.horizontal, 24)
                    HStack {
                        Spacer()
                            .frame(width: 18)
                        Text("0.00 kgs")
                            .foregroundStyle(.white)
                        Spacer()
                        Text("10/10/2023")
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 18)
                    }
                    
                    
                   
                }
                .frame(width: 350, height: 160)
                .background(.gray)
                .cornerRadius(15)
                .shadow(radius: 3)
                
            Spacer()
                    .frame(height: 20)
                VStack (spacing: 10){
                    HStack {
                        Spacer()
                            .frame(width: 25)
                        Text("Tips").bold().font(.title2)
                        Spacer()
                    }
                    VStack {
                        Text(randomTip)
                            .padding(.all, 10)
                    }
                    .frame(width: 350, height: 130)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                }
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color("CreamyWhite")) //vedi se cambiare il colore in base a come sta con le card delle tips
            
            
            
        }
        .navigationTitle(activity.name)
        
        
    }
}





#Preview {
    ActivityChartView(activity: Activities(name: "Doing laundry", imageName: "Laundry",WPI: 0.36))
}




