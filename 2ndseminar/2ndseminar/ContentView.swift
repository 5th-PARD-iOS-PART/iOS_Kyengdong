//
//  ContentView.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack {
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.yellow)
                    NavigationLink(destination: LogOn()){
                        Text("Login")
                            .font(.title)
                    }
                    Rectangle()
                        .frame(height: 300)
                        .foregroundColor(.yellow)
                    Image("photo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300)
                    Image("photo1")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300)
                }
            }
            .ignoresSafeArea()
            .background(Color.yellow)
        }
        
    }
}
#Preview {
    ContentView()
}
