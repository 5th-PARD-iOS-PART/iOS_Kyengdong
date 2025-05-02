//
//  UserViewModel.swift
//  5th-SwiftUI-MVVM
//
//  Created by 이유현 on 3/1/25.
//

import Foundation
import Observation
import SwiftUICore

/*
 실습2
 목표 : viewModel에 있는 getUserList 함수의 로직을 useCase로 분리해야한다
 
 0. 전체적으로 파일이 어떻게 분리되어 있는지를 파악한다.
 
 1. UseCase의 protocol을 구현한다. (파일은 이미 만들어져있으니 코드만 추가할 것!)
 2. GetUserListUseCaseImpl에서 protocol을 구현한다 (파일은 이미 만들어져있으니 코드만 추가할 것!)
 3. App에서 만든 useCase를 주입한다.
 4. ViewModel에서 useCase를 주입받고 getUserList에서 useCase를 호출한다.
 5. 실행이 잘 되는지 확인해본다!
 
 */

@Observable
final class UserViewModel {
    var userList : [UserModel] = []
    var showSheet: Bool = false
    
    private let addUserUseCase: AddUserUseCase
    private let getUserListUseCase: GetUserListUseCase
    
    init(addUserUseCase: AddUserUseCase, getUserListUseCase: GetUserListUseCase) {
        self.addUserUseCase = addUserUseCase
        self.getUserListUseCase = getUserListUseCase
    }
    
    //MARK: - View에게 데이터를 제공하는 로직 (View와 관련된 로직만)
    
    // sheet on /off
    func toggleSheet(){
        showSheet.toggle()
    }
    
    // 검색어에 따라 유저 불러오기 (전체 / 검색 필터링)
    func getUserList(_ searchText: String){
        let users = getUserListUseCase.excute(searchText)
        self.userList = users
    }
    
    // 유저 추가
    func addUser(name: String, part: String){
        addUserUseCase.execute(name: name, part: part)
        getUserList("") // 전체 유저 다시 불러오기
    }
        
}
