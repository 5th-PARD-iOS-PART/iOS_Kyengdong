//
//  listDoing.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct Datas:Identifiable{
    var id=UUID( )
    var title:String
    var name:String
}

extension Datas{
    static let dataFrame:[[Datas]]=[
        [
            Datas(title: "Flower1",name:"photo1"),
            Datas(title: "Flower2",name:"photo2"),
            Datas(title: "Flower3",name:"photo3"),
            Datas(title: "Flower4",name:"photo4")
        ],
        [
            Datas(title: "BbangBbang1",name:"Bbang"),
            Datas(title: "BbangBbang2",name:"Bbang"),
            Datas(title: "BbangBbang3",name:"Bbang"),
            Datas(title: "Bbang",name:"Bbang")
        ]
    ]
}

struct listDoing:View{
    let selecColor:[Color]=[.blue,.red,.green,.yellow]
    var body: some View{
        List{
            ForEach(0..<Datas.dataFrame.count, id:\.self){ sectionIndex in
                Section(
                    header:Text("Section \(sectionIndex)")
                        .font(.title2)
                        .bold()
                        .padding()
                        .background(selecColor[sectionIndex % selecColor.count])
                        .foregroundColor(.white)
                        .cornerRadius(15),
                    
                    footer:
                        Text("End of sectiont \(sectionIndex)")
                            .foregroundColor(.gray)
                ){
                    ForEach(Datas.dataFrame[sectionIndex]){ item in
                        DemoRow(data:item)
                    }
                }
            }
        }
    }
}

#Preview {
    listDoing()
}
