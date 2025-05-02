//
//  MainPage.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/17/25.
//

import SwiftUI

struct MainPage: View {
    @State var path = NavigationPath()
    var body: some View {
        
        NavigationStack (path: $path){
            VStack{
                top()
                List {
                    Section{
                        top2()
                    }
                    Section{
                        top3()
                    }
                    Section(){
                        DemoRow(path:$path)
                    }
                }
                
            }
            .navigationDestination(for: String.self){ Page in
                switch Page {
                case "Main": MainPage()
//                case "Bank": BankPage(path:$path)
//                case "Send": SendPage(path:$path)
//                case "Send_con": SendToPage(path:$path)
//                case "Shop": ShopPage()
                default:
                    MainPage()
                }
            }
        }
    }
}



#Preview {
    MainPage()
}
