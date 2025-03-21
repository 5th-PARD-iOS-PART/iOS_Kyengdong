//
//  ContentView.swift
//  1st_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var timetable = false
    @State private var photo = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        ZStack{
            Color.brown
                .ignoresSafeArea()
            VStack {
                if timetable{}
                else if photo{
                    VStack{
                        HStack{
                            Image("photo2")
                                .resizable()
                                .scaledToFit()
                                .frame(height:200)
                            
                            Image("photo3")
                                .resizable()
                                .scaledToFit()
                                .frame(height:200)
                            
                            Image("photo4")
                                .resizable()
                                .scaledToFit()
                                .frame(height:200)
                        }
                    }
                }
                else{
                    HStack{
                        Image("photoman")
                            .resizable()
                            .scaledToFill()
                            .frame(width:150, height:150)
                            .clipShape(.circle)
                            .padding()
                            .opacity(0.6)
                        Image("photoman")
                            .resizable()
                            .scaledToFill()
                            .frame(width:150, height:150)
                            .clipShape(.circle)
                            .padding()
                    }
                }

                Image("프로필")
                    .resizable()
                    .frame(width:200, height:200)
                    .scaledToFit()
                    .foregroundStyle(.tint)
                    .clipShape(.circle)
                Text("김경동😘")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                Text("#INFP #사진찍기 #배드민턴\n#PARD #iOS #사랑해요\n#잘부탁드립니다.")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                
                HStack{
                    Button("시간표"){
                        timetable.toggle()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:100)
                    .background(Color.green)
                    .cornerRadius(10)
                    
                    Button("Photo"){
                        if timetable==false{
                            photo.toggle()
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:100)
                    .background(Color.green)
                    .cornerRadius(10)
                }
                
                Button("More Info"){
                    print("학번...")
                    showAlert = true
                }
                .foregroundColor(.white)
                .padding()
                .frame(width:210)
                .background(Color.yellow)
                .cornerRadius(10)
                .alert("INFO",isPresented:$showAlert){
                    Button("확인",role:.cancel){}
                } message:{
                    Text("한동대학교 21학번 컴퓨터공학심화 전공\n24살 김경동입니다.")
                }
                
                if timetable{
                    Image("시간표")
                        .resizable()
                        .scaledToFit()
                        .frame(height:400)
                }
            }


        }
    }
}

#Preview {
    ContentView()
}
