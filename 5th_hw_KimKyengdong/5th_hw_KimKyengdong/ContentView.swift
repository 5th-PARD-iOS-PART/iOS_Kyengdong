//
//  ContentView.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @Bindable private var shopViewModel: ShopViewModel
    
    init(shopViewModel: ShopViewModel) {
        self.shopViewModel = shopViewModel
    }
    
    
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
            ShopPage(shopViewModel: shopViewModel)
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
    
    // repository
    let repository = ShopData()
    
    // useCase
    let getItemListUsecaseImpl = GetItemListUsecaseImpl(repository: repository)
    
    //ViewModel
    let viewModel = ShopViewModel(getItemListUsecase:getItemListUsecaseImpl)
    
    ContentView(shopViewModel: viewModel)
}

