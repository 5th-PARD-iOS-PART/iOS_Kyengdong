//
//  GetUserListUseCase.swift
//  MVVM+UseCase-practice
//
//  Created by 이유현 on 3/10/25.
//

import Foundation


// Hint: 실습2 구현 필요
protocol GetUserListUseCase{
    func excute(_ searchText: String)->[UserModel]
}
