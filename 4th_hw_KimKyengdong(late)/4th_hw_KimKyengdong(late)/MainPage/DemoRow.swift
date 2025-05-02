//
//  DemoRow.swift
//  4th_hw_KimKyengdong(late)
//
//  Created by Kim Kyengdong on 4/18/25.
//

import SwiftUI

struct DemoRow:View {
    @Binding var path: NavigationPath
    
    var body: some View {
        ForEach(Bank.banks,id:\.id){ data in
            Button{
                path.append("Bank")
            } label:{
                HStack{
                    Image(data.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width:34,height:34)
                        .padding(.vertical, 5)
                        .padding(.trailing, 6)
                    VStack(alignment: .leading){
                        Text(data.sum)
                            .font(.system(size: 18.2))
                            .frame(alignment: .leading)
                            .padding(.vertical, 1)
                        Text(data.name)
                            .font(.system(size: 14.3))
                            .frame(alignment: .leading)
                            .padding(.vertical, 1)
                    }
                    Spacer()
                    
                    Button{
//                        path.append("Send")
                    } label:{
                        Image("SongGold")
                            .resizable()
                            .scaledToFit()
                            .frame(width:59,height:36)
                    }
                }
            }
        }
    }
}
