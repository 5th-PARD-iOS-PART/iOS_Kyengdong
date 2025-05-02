//
//  SendPage1.swift
//  4th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/11/25.
//

import SwiftUI


struct SendPage1: View {
    @Binding var path:NavigationPath
    @State var input: String = ""
    var body: some View {
        VStack{
            HStack{
                Text("내 (토스뱅크 통장)")
                Text("에서")
                Spacer()
            }
            HStack{
                Text("잔액")
                Text("(12,121)원")
            }
            HStack{
                Text("내 (Wingo 통장)")
                Text("으로")
                Spacer()
            }
            HStack{
                Text("(하나은행109219201902)")
            }
            TextField("얼마나 옮길까요?",text:$input)
                .keyboardType(.numberPad)
                .onAppear()
                
            HStack{
                if let intValue = Int(input){
                    Text("잔액\(intValue)원 입력")
                }
                else {
                    Text("잔액이 123123원 이에요.")
                        .foregroundColor(.red)
                }
            }
            Spacer()
            
            if !input.isEmpty{
                Button("다음"){
                    
                }
                .disabled(input=="0")
            }
            
        }
    }
}
