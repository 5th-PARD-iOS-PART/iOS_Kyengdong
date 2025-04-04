//
//  DemoRow.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct DemoRow: View {
    var data:Datas
    
    var body: some View {
        HStack{
            Image(data.name)
                .resizable()
                .frame(width:50, height:50)
                .cornerRadius(5)
            Text(data.title)
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .frame(maxWidth: .infinity, alignment: .leading)
    }
        
    }
}
