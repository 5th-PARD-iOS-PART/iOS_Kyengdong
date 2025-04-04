//
//  work2.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI


struct LogOn: View{
    init(){
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    @State private var selction = 0
    var body: some View{
        TabView(selection:$selction){
            FirstView()
                .tabItem{
                    Image(systemName:"arrow.up.circle")
                    Text("😄1")
                }
                .tag(0)
            SecondView()
                .tabItem{
                    Image(systemName:"house")
                    Text("👓2")
                }
            .tag(1)
            ThirdView()
                .tabItem{
                    Image(systemName:"flame.fill")
                    Text("😍3")
                }
            .tag(2)
        }
    }
}


