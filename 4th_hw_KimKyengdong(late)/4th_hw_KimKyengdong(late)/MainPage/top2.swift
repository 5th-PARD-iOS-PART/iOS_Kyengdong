//
//  top2.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/17/25.
//

import SwiftUI

struct top2: View {
    var body: some View {
        HStack{
            Image("sorry")
                .resizable()
                .frame(width: 31,height:35)
                .padding(.trailing, 10)
            VStack(alignment: .leading){
                Text("치아는 뼈일까?")
                    .font(.system(size: 15))
                    .foregroundColor(Color(.gray))
                Text("정답보기")
                    .font(.system(size: 18))
                    .foregroundColor(.cyan)
            }
            Spacer()
            Image("sorry2")
                .resizable()
                .frame(width: 7,height:13)
        }
        .padding(.vertical, 12)
        
    }
}
