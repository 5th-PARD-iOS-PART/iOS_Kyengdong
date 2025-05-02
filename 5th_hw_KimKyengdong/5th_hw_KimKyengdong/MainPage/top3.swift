//
//  top3.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/17/25.
//

import SwiftUI

struct top3: View {
    var body: some View {
        HStack{
            Text("토스뱅크")
                .font(.system(size: 17))
                .foregroundColor(.black)
            Spacer()
            Text("내 소비복권 긁기")
                .font(.system(size: 13))
                .foregroundColor(Color(.cyan))
            Image("sorry2")
                .resizable()
                .frame(width:7, height:13)
        }
        .padding(.vertical, 11)
    }
}
