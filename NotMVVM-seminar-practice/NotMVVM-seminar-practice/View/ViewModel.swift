//
//  ViewModel.swift
//  NotMVVM-seminar-practice
//
//  Created by Kim Kyengdong on 4/12/25.
//

import SwiftUI

class ViewModel :ObservableObject{
    
    @Published var text:String = ""
    
    @Published var userList: [UserModel] = []
    @Published var filteredUserList: [UserModel] = []
    @Published var showSheet: Bool = false
    
    func toggleSheet(){
        showSheet.toggle()
    }
    
    // 초기에 화면에 보여줄 MockData를 설정함
    func getMemoMockData() -> [UserModel]{
        let names : [String] = ["유재혁", "이유현", "권채은", "김우현", "김나임", "김민규"]
        let parts : [String] = ["iOS","iOS", "Web", "Web", "Server", "Server"]
        
        var newUserList : [UserModel] = []
        for i in 0...5 {
            let newUser = UserModel(name: names[i], part: parts[i])
            newUserList.append(newUser)
        }
        
        return newUserList
    }
    
    // 검색 결과 filtering
    func filterSearchList(_ searchText: String){
        if searchText.isEmpty {
            filteredUserList = userList
        } else {
            filteredUserList = userList.filter{ $0.name.contains(searchText) }
        }
        
    }
    
    // 새로운 유저 추가
    func addNewUser(name: String, part: String) {
        if !name.isEmpty && !part.isEmpty {
            let newUser = UserModel(name: name, part: part)
            userList.append(newUser)
            filteredUserList = userList
        }
    }

}

