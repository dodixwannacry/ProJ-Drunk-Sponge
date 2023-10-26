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
                        
                        VStack(alignment: .leading) {
                            Text("The consequences on sea pollution").font(.largeTitle).bold().padding()
                        }
                        
                        .foregroundStyle(Color.white)
                        .padding()
                    }
                    .cornerRadius(20)
                    .padding(.top)
                    .padding(.horizontal)
                }
                HStack {
                    Text("Today")
                        .bold()
                        .padding()
                    Spacer().frame(width: 200)
                    Text(" \(dateFormatter.string(from: Date()))")
                        .bold()
                }
                HStack {
                    Button {
                        viewButton = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .padding(.all, 8)
                            .background(.teal)
                            .bold()
                            .foregroundColor(.white)
                            .cornerRadius(22)
                    }
                    Spacer()
                        .frame(width: 180)
                    Text("numero").bold().font(.largeTitle)
                        
                }
                Spacer()
                
                .sheet(isPresented: $viewButton) {
                    InputModalView()
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        Button
                        {
                            presentationMode.wrappedValue.dismiss()
                            
                        } label:
                        {
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button
                        {
                            
                            presentationMode.wrappedValue.dismiss()
                        } label:
                        {
                        }
                    }
                    
                }
            }
            
        }
        
        
    }
}


#Preview {
    ActivityChartView()
}


