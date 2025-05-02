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
            VStack{
                VStack(alignment:.leading){
                    Text("토스뱅크 1000-9047-0710")
                        .font(.system(size:14))
                        .foregroundColor(Color(.gray))
                        .padding(.vertical,4)
                    HStack{
                        Text("90,900원")
                            .font(.system(size: 29))
                            .foregroundColor(.black)
                        Spacer()
                        HStack{
                            Image(systemName: "lanyardcard.fill")
                                .foregroundColor(Color(.black))
                                .frame(width: 12, height: 16)
                            Text("카드")
                                .font(.system(size: 13))
                                .foregroundColor(Color(.gray))
                        }
                        .padding(.horizontal, 18)
                        .padding(.vertical, 12)
                        .background(Color("Accentcolor"))
                        .cornerRadius(22)
                        
                    }
                    
                }
                
                HStack{
                    Text("채우기")
                        .font(.system(size:18))
                        .foregroundColor(.blue)
                        .padding(.horizontal,60)
                        .padding(.vertical,14)
                        .background(Color(.systemMint))
                        .cornerRadius(12)
                    Button("보내기"){
                        
                    }
                        .font(.system(size:18))
                        .foregroundColor(Color(.systemMint))
                        .padding(.horizontal,60)
                        .padding(.vertical,14)
                        .background(Color(.blue))
                        .cornerRadius(12)
                }
                
                HStack {
                        Image("bolt")
                            .resizable()
                            .frame(width: 46, height: 46)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("어제 쌓인 이자")
                                .font(.system(size: 13))
                                .foregroundColor(Color(.lightGray))
                            Text("114원 지금받기")
                                .font(.system(size: 18))
                                .foregroundColor(Color(.gray))
                        }
                        Spacer()
                        Image("sorry2")
                            .resizable()
                            .frame(width: 7, height: 13)
                    }
                    .padding(.vertical, 20)
                
                HStack {
                    Text("전체")
                        .font(.system(size: 16))
                        .foregroundColor(Color(.gray))
                    Spacer()
                    Image("glass")
                        .resizable()
                        .frame(width: 20, height: 19)
                        .foregroundColor(Color(.gray))
                }
                
                ForEach(0..<card.pay.count,id:\.self){selection in
                    Section(
                        header:Text(date[selection])
                            .foregroundColor(.gray)
                    ){
                        ForEach(card.pay[selection]){ item in
                            DemoRow2(data: item)
                        }
                        
                    }
                    .frame(width:380,height:100)
                }
            }
            .padding(.horizontal,28)
        }
    }
}

#Preview {
    BankPage()
}
