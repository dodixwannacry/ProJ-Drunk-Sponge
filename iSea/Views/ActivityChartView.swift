//
//  ActivityChartView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
import Foundation
struct ActivityChartView: View {
    
    
    @State var isPresented = false
    var body: some View {
        let date = Date()
        let modifiedDate = Calendar.current.date(byAdding: .day, value: 1, to: date)!
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
                    Spacer().frame(width: 240)
                    Text("\(modifiedDate)")
                }
               
            }
            

            
            
            Button(action: {
                self.isPresented.toggle()
                
            }, label: {
                Image(systemName:"plus")
                    .bold()
                    .foregroundColor(.black)
                    .frame(width:25,height:25)
            })
            .fullScreenCover(isPresented: $isPresented, content: {
                OverlayView(isPresented: $isPresented)
                
            })
            Text("Your Savings")
                .foregroundColor(Color.green)
                .bold()
            Spacer()
            
        }
    }
        
}


    
    struct OverlayView: View {
        @Binding var isPresented:Bool
        var body: some View {
            NavigationView{
                VStack{
                    Button(action: {
                        self.isPresented = false
                    }, label: {
                        Text("Come back")
                            .bold()
                            .foregroundColor(.black)
                            .frame(width:200,height:50)
                            .background(Color.teal)
                    })
                    .padding()
                }
                .navigationTitle("Action")
            }
        }
    }

    #Preview {
        ActivityChartView()
    }
    

