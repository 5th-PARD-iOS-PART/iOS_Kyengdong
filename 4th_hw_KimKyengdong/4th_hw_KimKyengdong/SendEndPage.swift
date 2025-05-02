//
//  SendEndPage.swift
//  4th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/12/25.
//

import SwiftUI

struct SendEndPage:View {
    @Binding var path:NavigationPath
    var body: some View {
        VStack{
            HStack{
                Button(action: {
    //              path.removeLast()
                }) {
                    Image(systemName: "chevron.left")
                        .frame(width: 12, height: 21)
                        .foregroundColor(.black)
                }
                Text("토스뱅크송금")
                    .font(.system(size: 18))
                    .foregroundColor(Color(.lightGray))
                    .padding(.horizontal, 100)
            }
            Spacer()
            HStack{
                Text("내 (토스뱅크통장)")
                Text("으로")
            }
            Text("(1)원을")
            Text("옮길까요?")
            
            Spacer()
            
            HStack{
                Text("받는 분에게 표시")
                Spacer()
                Text("(유재혁)")
                Image("top3")
            }
            HStack{
                Text("출금계좌")
                Spacer()
                Text("(내 토스배읔 통장)")
                Image("top3")
            }
            HStack{
                Text("입금계좌")
                Spacer()
                Text("(하나은행12352153152)")
                Image("top3")
            }
            Button("옮기기"){}
            Text("평생 수수료 무료")
        }
    }
}
