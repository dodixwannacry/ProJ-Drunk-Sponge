//
//  ModalView.swift
//  iSea
//
//  Created by Rodolfo Falanga on 24/10/23.
//

import SwiftUI

struct InputModalView: View {
    
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
            Text("How many loads of laundry have you done today?").bold().font(.largeTitle).multilineTextAlignment(.center)
                .padding()
            
            VStack {
                HStack {
                    Button(action: {selected1.toggle()}, label: {
                        Text("1").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(.gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                           Button(action: {selected2.toggle()}, label: {
                               Text("2").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(.gray)
                                   .cornerRadius(40)
                           })
                }
                HStack {
                    Button(action: {selected3.toggle()}, label: {
                        Text("3").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(.gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                           Button(action: {selected4.toggle()}, label: {
                               Text("4").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(.gray)
                                   .cornerRadius(40)
                           })
                }
                HStack {
                    Button(action: {selected5.toggle()}, label: {
                        Text("5").font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(.gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height:100)
                           Button(action: {selected6.toggle()}, label: {
                               Text("6").font(.title)
                                   .bold()
                                   .foregroundColor(.black)
                                   .frame(width: 140, height: 70)
                                   .padding(.all, 8)
                                   .background(.gray)
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
    InputModalView()
}
