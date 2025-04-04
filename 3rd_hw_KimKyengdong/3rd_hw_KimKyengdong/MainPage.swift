//
//  MainPage.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        VStack{
            
            List {
                top()
                    .frame(width:.infinity)
                    .background(Color("AssetColor"))
                Section{
                    top2()
                }
                Section(){
                    ForEach(bank.banks,id:\.id){ item in
                        DemoRow(data: item)
                    }
                }
                Section(){
                    
                }
                Section(){
                    
                }
            }
        }
    }
}

#Preview {
    MainPage()
}
