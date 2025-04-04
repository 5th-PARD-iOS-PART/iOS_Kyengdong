//
//  top.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/3/25.
//

import SwiftUI

struct top2: View {
    var body: some View {
        HStack{
            Image("sorry")
                .resizable()
                .frame(width: 31,height:35)
                .padding()
            VStack(alignment: .leading){
                Text("치아는 뼈일까?")
                Text("정답보기")
            }
            Spacer()
            Image("sorry2")
                .resizable()
                .frame(width: 7,height:13)
        }
        .padding()
        
    }
}
#Preview {
    top2()
}

