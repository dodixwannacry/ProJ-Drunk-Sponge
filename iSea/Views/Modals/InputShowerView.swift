//
//  InputShowerView.swift
//  iSea
//
//  Created by Ilaria Poziello on 26/10/23.


import SwiftUI

struct InputShowerView: View {
    
    @State var selected1: Bool = false
    @State var selected2: Bool = false
    @State var selected3: Bool = false
    @State var selected4: Bool = false
    @State var selected5: Bool = false
    @State var selected6: Bool = false
    @State var cancel: Bool = false
    @State var save: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("How long did your last shower last?").bold().font(.largeTitle).multilineTextAlignment(.center)
                .padding()
            
            VStack {
                HStack {
                    Button(action: {selected1.toggle()}, label: {
                        Text("5 min").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selected1 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                           Button(action: {selected2.toggle()}, label: {
                               Text("10 min").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(selected2 ? .teal : .gray)
                                   .cornerRadius(40)
                           })
                }
                HStack {
                    Button(action: {selected3.toggle()}, label: {
                        Text("15 min").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selected3 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                           Button(action: {selected4.toggle()}, label: {
                               Text("20 min").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(selected4 ? .teal : .gray)
                                   .cornerRadius(40)
                           })
                }
                HStack {
                    Button(action: {selected5.toggle()}, label: {
                        Text("25 min").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selected5 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height:100)
                           Button(action: {selected6.toggle()}, label: {
                               Text("30 min").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(selected6 ? .teal : .gray)
                                   .cornerRadius(40)
                           })
                }
                Spacer()
                    .frame(height: 50)
                HStack {
                    Button(action: {cancel.toggle()}, label: {
                        Text("Cancel").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 55)
                            .padding(.all, 8)
                            .background(.gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150)
                           Button(action: {save.toggle()}, label: {
                               Text("Save").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 55)
                                   .padding(.all, 8)
                                   .background(.teal)
                                   .cornerRadius(40)
                           })
                }
            }
            
            
            
           
           }
    }
 }

#Preview {
    InputShowerView()
}
