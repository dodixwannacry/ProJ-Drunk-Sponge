//
//  ActivityChartView.swift
//  iSea
//
//  Created by Ilaria Poziello on 19/10/23.
//

import SwiftUI
    struct ActivityChartView: View {
        @State var isPresented = false
        var body: some View {
            NavigationStack {
                Text("Activities").font(.largeTitle).bold()
                    .frame(width: 200,height:100)
                VStack{
                    Button(action: {
                        self.isPresented.toggle()
                        
                    }, label: {
                        Text("Edit")
                            .bold()
                            .foregroundColor(.black)
                            .frame(width:200,height:50)
                            .background(Color.gray)
                    })
                    .fullScreenCover(isPresented: $isPresented, content: {
                        OverlayView(isPresented: $isPresented)
                    
                    })
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                }
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
