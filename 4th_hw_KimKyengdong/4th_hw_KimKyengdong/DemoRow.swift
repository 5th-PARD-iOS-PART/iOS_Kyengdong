//
//  DemoRow.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct DemoRow: View {
    @Binding var path: NavigationPath
    var data: bank
    var body: some View {
        HStack{
            Image(data.icon)
                .resizable()
                .scaledToFit()
                .frame(width:34,height:34)
                .padding(.vertical, 5)
                .padding(.trailing, 6)
            
            VStack(alignment: .leading){
                Text(data.sum)
                    .font(.system(size: 18))
                    .frame(alignment: .leading)
                    .padding(.vertical, 1)
                Text(data.name)
                    .font(.system(size: 14))
                    .frame(alignment: .leading)
                    .padding(.vertical, 1)
            }
            Spacer()
            
            Button{
                path.append("Send")
            } label: {
                Text("송금")
                    .frame(width:59,height:36)
                    .background(Color(.gray))
            }
        }
        
    }
}

