//
//  MVVM_UseCase_practiceApp.swift
//  MVVM+UseCase-practice
//
//  Created by 이유현 on 3/6/25.
//

import SwiftUI

@main
struct MVVM_UseCase_practiceApp: App {
    
    var body: some Scene {
        
        // repository
        let repository = UserRepositoryImpl()
        
        // useCase
        // Hint: 실습2 구현 필요
        let addUserUseCaseImpl = AddUserUseCaseImpl(repository: repository)
        let GetUserListUseCaseImpl = GetUserListUseCaseImpl(repository: repository)
        
        //ViewModel
        // Hint: 실습2 구현 필요
        let viewModel = UserViewModel(addUserUseCase: addUserUseCaseImpl, getUserListUseCase: GetUserListUseCaseImpl)
        
        WindowGroup {
            UserListView(userViewModel : viewModel)
        }
    }
}
