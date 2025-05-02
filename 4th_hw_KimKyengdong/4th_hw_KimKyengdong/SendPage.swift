//
//  SendPage.swift
//  4th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/11/25.
//

import SwiftUI

struct SendPage: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(alignment: .leading){
            Text("어디로 돈을 보낼까요?")
                .font(.system(size: 26))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.vertical,10)
                .padding(.bottom,5)
            
            VStack{
                HStack{
                    Text("계좌")
                        .frame(width:190,height:45)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    Text("연락처")
                        .frame(width:190,height:45)
                        .foregroundColor(Color.gray)
                }
                .padding()
                .frame(width:390,height:55)
                .background(Color(.lightGray))

                HStack{
                    Text("계좌번호입력")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.lightGray))
                    
                    Spacer()
                    
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                }
                
                Section{
                    ForEach(SendBank.model, id: \.id){item in
                        Button(action:{
                            path.append("Send_con")
                        }){
                            DemoRow3(data: item)
                        }
                    }
                }
            }
        }
    }
}

