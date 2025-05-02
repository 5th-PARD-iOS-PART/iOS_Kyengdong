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
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
    }
    @State private var path = NavigationPath()
    @State private var selection = 0
    
    var body: some View {
        NavigationStack(path: $path){
            TabView(selection: $selection){
                MainPage(path:$path)
                    .tabItem{
                        Image(systemName:"house")
                        Text("홈")
                    }
                    .tag(0)
                GoodPage()
                    .tabItem{
                        Image(systemName:"diamond")
                        Text("혜택")
                    }
                    .tag(1)
                ShopPage()
                    .tabItem{
                        Image(systemName:"shop")
                        Text("토스쇼핑")
                    }
                    .tag(2)
                GrapePage()
                    .tabItem{
                        Image(systemName:"increase")
                        Text("증권")
                    }
                    .tag(3)
                AllPage()
                    .tabItem{
                        Image(systemName:"menu")
                        Text("전체")
                    }
                    .tag(4)
            }
            .tint(.black)
        }
        .navigationDestination(for: String.self){ page in
            switch page{
            case "Send":
                SendPage(path:$path)
            case "Send_con":
                SendPage1(path:$path)
            case "SendEnd":
                SendEndPage(path:$path)
            case "Bank":
                BankPage(path: $path)
            default:
                Text("no pageㅇㅇㅇㅇㅇㅇ")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
