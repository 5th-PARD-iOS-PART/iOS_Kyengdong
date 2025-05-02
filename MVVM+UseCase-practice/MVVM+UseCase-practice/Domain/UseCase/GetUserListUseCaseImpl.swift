//
//  GetUserListUseCaseImpl.swift
//  MVVM+UseCase-practice
//
//  Created by 이유현 on 3/10/25.
//

import Foundation

// Hint: 실습2 구현 필요
final class GetUserListUseCaseImpl : GetUserListUseCase {
    private let repository: UserRepository
    
    init(repository: UserRepository) {
        self.repository = repository
    }
    
    func excute(_ searchText: String) -> [UserModel] {
        let users = repository.fetchUsers()
        
        if searchText.isEmpty {
            return users
        } else{
            return users.filter {$0.name.contains(searchText)}
            }
        }
}

