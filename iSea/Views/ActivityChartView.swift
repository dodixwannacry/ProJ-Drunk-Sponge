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
