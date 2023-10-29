//
//  InputView.swift
//  iSea
//
//  Created by Ilaria Poziello on 29/10/23.

import SwiftUI

struct InputView: View {
    
    var inputViewModel: InputModel
    @State var cancel: Bool = false
    @State var save: Bool = false
    
    @State var selectedButtonIndex: Int = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Text(inputViewModel.question).bold().font(.largeTitle).multilineTextAlignment(.center)
                .padding()
            
            VStack {
                HStack {
                    Button(action: {selectedButtonIndex = 1}, label: {
                        Text(inputViewModel.buttonValues[0]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 1 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                    Button(action: {selectedButtonIndex = 2}, label: {
                        Text(inputViewModel.buttonValues[1]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 2 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                }
                HStack {
                    Button(action: {selectedButtonIndex = 3}, label: {
                        Text(inputViewModel.buttonValues[2]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 3 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height: 100)
                    Button(action: {selectedButtonIndex = 4}, label: {
                        Text(inputViewModel.buttonValues[3]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 4 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                }
                HStack {
                    Button(action: {selectedButtonIndex = 5}, label: {
                        Text(inputViewModel.buttonValues[4]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 5 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                    .padding()
                    .frame(width: 150, height:100)
                    Button(action: {selectedButtonIndex = 6}, label: {
                        Text(inputViewModel.buttonValues[5]).font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 140, height: 70)
                            .padding(.all, 8)
                            .background(selectedButtonIndex == 6 ? .teal : .gray)
                            .cornerRadius(40)
                    })
                }
                Spacer()
                    .frame(height: 50)
                HStack {
                    Button(action: {
                        cancel.toggle()
                        presentationMode.wrappedValue.dismiss()
                        
                    }, label: {
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
    InputView(inputViewModel: InputModel(question: "activity question example", buttonValues: ["1","2","3","4","5","6"]))
}
