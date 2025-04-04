//
//  ContentView.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/3/25.
//

import SwiftUI

struct ContentView: View {
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    @State private var selection = 0
    
    var body: some View {
        NavigationView{
            TabView(selection: $selection){
                MainPage()
                    .tabItem{
                        Image(systemName:"house")
                        Text("수정")
                    }
                    .tag(0)
                GoodPage()
                    .tabItem{
                        Image(systemName:"house")
                        Text("수정")
                    }
                    .tag(1)
                ShopPage()
                    .tabItem{
                        Image(systemName:"house")
                        Text("수정")
                    }
                    .tag(2)
                GrapePage()
                    .tabItem{
                        Image(systemName:"house")
                        Text("수정")
                    }
                    .tag(3)
                AllPage()
                    .tabItem{
                        Image(systemName:"house")
                        Text("수정")
                    }
                    .tag(4)
            }
            .tint(.black)
        }
    }
}

#Preview {
    ContentView()
}
