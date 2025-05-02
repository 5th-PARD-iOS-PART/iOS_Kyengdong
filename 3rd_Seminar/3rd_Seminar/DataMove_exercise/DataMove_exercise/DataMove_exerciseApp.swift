//
//  DataMove_exerciseApp.swift
//  DataMove_exercise
//
//  Created by 유재혁 on 4/5/25.
//

import SwiftUI

//@main
//struct DataMove_exerciseApp: App {
//    @State private var user = UserModel()
//
//        var body: some Scene {
//            WindowGroup {
//                NavigationStack {
//                    IntroView()
//                }
//                .environment(user) // ✅ 모든 뷰에 전달
//            }
//        }
//}

@main
struct DataMove_exerciseApp: App {
    @StateObject private var store = MemberStore()

    var body: some Scene {
        WindowGroup {
            MemberListView()
                .environmentObject(store)
        }
    }
}
