//
//  SwiftUIView.swift
//  1st_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 3/18/25.
//

import SwiftUI

struct IntroView: View {
    @State private var showSchedule = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image("프로필")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .clipShape(.circle)
            Text("안녕하세요! 저는 홍길동입니다.")
                .font(.title)
                .fontWeight(.bold)

            Text("#iOS #SwiftUI #ENFJ #산책 #음악감상")
                .font(.subheadline)
                .foregroundColor(.gray)

            Button(action: {
                print("Instagram 버튼 클릭")
            }) {
                HStack {
                    Image(systemName: "camera.fill")
                    Text("Instagram 팔로우하기")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            Button(action: {
                showSchedule.toggle()
            }) {
                Text("🗓️시간표 보기")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            if showSchedule {
                Image("시간표") // "schedule"는 Assets에 추가된 이미지 파일명
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
            }
        }
        .padding()
    }
}


#Preview {
    IntroView()
}

