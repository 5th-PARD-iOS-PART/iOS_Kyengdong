//
//  BankPage.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct BankPage: View {
    let date : [String]=["3월 22일","3월 21일"]
    var body: some View {
        ScrollView{
            Image("3")
            ForEach(0..<card.pay.count,id:\.self){selection in
                Section(
                    header:Text(date[selection])
                        .alignmentGuide(.leading) { $0[HorizontalAlignment.leading] }
                        .foregroundColor(.gray)
                ){
                    ForEach(card.pay[selection]){ item in
                        DemoRow2(data: item)
                    }
                    
                }
                .frame(width:380,height:100)
            }
        }
    }
}

#Preview {
    BankPage()
}
