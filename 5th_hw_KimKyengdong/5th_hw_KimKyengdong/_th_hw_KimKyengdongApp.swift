//
//  _th_hw_KimKyengdongApp.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import SwiftUI

@main
struct _th_hw_KimKyengdongApp: App {
    var body: some Scene {
        
        
        // repository
        let repository = ShopData()
        
        // useCase
        let getItemListUsecaseImpl = GetItemListUsecaseImpl(repository: repository)
        
        //ViewModel
        let viewModel = ShopViewModel(getItemListUsecase:getItemListUsecaseImpl)
        
        WindowGroup {
            ContentView()
        }
    }
}
