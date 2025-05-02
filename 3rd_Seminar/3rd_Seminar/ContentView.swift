//
//  ContentView.swift
//  3rd_Seminar
//
//  Created by Kim Kyengdong on 4/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated = false
    
    var body: some View {
        VStack {
            Text(isActivated ? "On":"Off")
                .padding(10)
                .background(isActivated ? .green : .red)
                .foregroundColor(.white)
                .cornerRadius(10)
            Button("Toggle"){
                isActivated.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
