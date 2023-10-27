//
//  ActivityChartView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
import Foundation

struct ActivityChartView: View {
    
    
    @State private var viewButton = false
    @Environment(\.presentationMode) var presentationMode
    
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
                }
                Spacer()
                
                .sheet(isPresented: $viewButton) {
                    InputLaundryView()
                }
            }
            
        }
        
        
    }


#Preview {
    ActivityChartView()
}


