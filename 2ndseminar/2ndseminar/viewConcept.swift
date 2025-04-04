//
//  viewConcept.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//
import SwiftUI


struct FirstView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("첫번째 페이지")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            Image("photo2")
                .resizable()
                .scaledToFit()
                .frame(width:300)
        }
    }
}

struct ThirdView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("세번째 페이지")
        }
    }
}
