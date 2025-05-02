//
//  MainPage.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct MainPage: View {
    @Binding var path:NavigationPath
    
    var body: some View {
        VStack{
            top()
                .background(Color("AccentColor"))
            List {
                Section{
                    top2()
                }
                Section{
                    top3()
                }
                Section(){
                    ForEach(bank.banks,id:\.id){ item in
                        Button{
                            path.append("Bank")
                        } label:{
                            DemoRow(path:$path, data: item)
                                .listRowSeparator(.hidden)
                        }
                    }
                }
            }
            .background(Color("AccentColor"))
        }
        .background(Color("AccentColor"))
    }
}

