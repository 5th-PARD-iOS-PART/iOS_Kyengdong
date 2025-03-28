//
//  ContentView.swift
//  Pard_1st_seminar
//
//  Created by Kim Kyengdong on 3/21/25.
//

// 이름 시작은 소문자로
// 타입 시작은 대문자로
// let 상수명: 타입 = 값
// var 변수영: 타입 = 값
// 변수를 문자열에 입력= "\(변수)"
// 열거형을 통해 타입을 만들수 있다.(with. enum{case}
// 원시값(타입에 맞추어 값을 저장)/연관값(타입을 정의해서 저장) == 타입으로 선언
// let은 담는다.
// 함수 시작은 func
// argument 함수 호출 시 받을 변수(와일드카드패턴(_)으로 생략가능)
// parameter 함수 실행 시 사용할 변수
// return하기 위해선 '-> 타입'을 선언
// 옵셔널 타입뒤에 ?
// if let 시 else 문 가능?
// guard let 시 함수 전체에서 사용가능


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
