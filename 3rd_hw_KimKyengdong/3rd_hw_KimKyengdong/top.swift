//
//  top.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/3/25.
//

import SwiftUI

struct top: View {
    var body: some View {
        HStack{
            Divider()
                .frame(width: 40)
            Image("top1")
                .resizable()
                .scaledToFit()
                .frame(width: 21,height:22)
            Image("top2")
                .resizable()
                .scaledToFit()
                .frame(width: 36,height:18)
            Image("top3")
                .resizable()
                .scaledToFit()
                .frame(width: 8,height:12)
            Spacer()
            Image("top4")
                .resizable()
                .scaledToFit()
                .frame(width: 40,height:25)
                .padding(.horizontal, 10)
            Image("top5")
                .resizable()
                .scaledToFit()
                .frame(width: 22,height:25)
                .overlay(
                Image("top6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 8,height:9)
                    .offset(x:10,y:-10)
                )
            Divider()
                .frame(width: 40)
        }
        .frame(width:440,height: 50)
        .background(Color("AssetColor"))
        
    }
}
