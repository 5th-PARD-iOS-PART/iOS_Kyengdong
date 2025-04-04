//
//  GridView.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct GridView: View {
    let columns = [GridItem(.flexible(),spacing: 20),GridItem(.flexible(),spacing: 20)]
    
    var body: some View {
        NavigationView{
            VStack{
                Text("PARD")
                ScrollView{
                    LazyVGrid(columns: columns,spacing: 20){
                        ForEach(GridModel.sample){ item in
                            Grid(item:item)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle("Grid Example")
    }
}

#Preview {
    GridView()
}
