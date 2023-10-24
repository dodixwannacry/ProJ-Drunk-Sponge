//
//  ActivityChartView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
import Foundation

struct ActivityChartView: View {
    
    
    @State private var ViewButton = false
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
                            .frame(height: 180)
                        
                        
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
                    Spacer().frame(width: 240)
                    Text(" \(dateFormatter.string(from: Date()))")
                        .bold()
                }
                Button {
                    ViewButton = true
                } label: {
                    Image(systemName: "plus")
                        .alignmentGuide(.leading) { _ in -150 }
                        .background(.teal)
                        .bold()
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .frame(width: 150, height: 350)
                }
                .sheet(isPresented: $ViewButton) {
                    ModalView()
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


