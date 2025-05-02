//
//  ContentView.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView(){
            MainPage()
                .tabItem{
                    Image(systemName:"house")
                    Text("홈")
                }
                .tag(0)
//            GoodPage()
//                  .tabItem{
//                    Image(systemName:"diamond")
//                  Text("혜택")
//                }
//          .tag(1)
            ShopPage()
                .tabItem{
                    Image(systemName:"bag")
                    Text("토스쇼핑")
                }
                .tag(2)
            //                GrapePage()
            //                  .tabItem{
            //                    Image(systemName:"increase")
            //                  Text("증권")
            //            }
            //          .tag(3)
            //                AllPage()
            //                  .tabItem{
            //                    Image(systemName:"menu")
            //                  Text("전체")
            //            }
            //          .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
