//
//  DemoRow3.swift
//  4th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/11/25.
//

import SwiftUI

struct DemoRow3: View {
    var data:SendBank
    
    var body: some View {
        VStack {
            HStack {
                Image(data.image)
                
                
                VStack(alignment: .leading) {
                    Text(data.bank)
                    
                    Text(data.bankName)
                    
                }
                Spacer()
                
                Image(systemName: "star.fill")
                    .frame(width: 25, height: 23)
                    .foregroundColor(Color(.lightGray))
            }
        }
    }
}
