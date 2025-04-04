//
//  DemoRow.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct DemoRow: View {
    var data: bank
    var body: some View {
        NavigationLink(destination: BankPage()){
            HStack{
                Image(data.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width:34,height:34)
                VStack{
                    Text(data.sum)
                        .font(.system(size: 18.2))
                        .frame(alignment: .leading)
                    Text(data.name)
                        .font(.system(size: 14.3))
                        .frame(alignment: .leading)
                }
                Spacer()
                Image("SongGold")
                    .resizable()
                    .scaledToFit()
                    .frame(width:59,height:36)
            }
        }
    }
}
