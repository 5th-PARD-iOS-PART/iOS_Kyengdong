//
//  DemoRow2.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
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

