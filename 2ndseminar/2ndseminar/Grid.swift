//
//  Grid.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct Grid: View {
    var item : GridModel
    
    var body: some View {
        VStack{
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width:100,height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Text(item.title)
                .font(.system(size:14,weight:.bold))
                .foregroundColor(.black)
        }
        
    }
}
