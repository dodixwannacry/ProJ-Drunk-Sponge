//
//  ModalView.swift
//  iSea
//
//  Created by Rodolfo Falanga on 24/10/23.
//

import SwiftUI

struct InputModalView: View {
    var body: some View {
        NavigationStack {
            Text("How many loads of laundry have you done today?").bold().font(.largeTitle).multilineTextAlignment(.center)
           }
    }
 }

#Preview {
    InputModalView()
}
