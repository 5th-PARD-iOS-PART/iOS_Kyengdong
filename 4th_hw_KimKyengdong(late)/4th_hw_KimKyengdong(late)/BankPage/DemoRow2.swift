//
//  DemoRow2.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/18/25.
//

import SwiftUI

struct DemoRow2: View {
    var data: card
    var body: some View {
        TabView{
            HStack{
                Image(data.icon)
                    .resizable()
                    .frame(width:45,height:45)
                VStack{
                    Text(data.name)
                    Text(data.time)
                }
                Spacer()
                VStack{
                    Text(data.pay)
                    Text(data.sum)
                }
            }
        }
    }
}
