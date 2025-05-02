//
//  UserRepository.swift
//  NotMVVM-seminar-practice
//
//  Created by Kim Kyengdong on 4/12/25.
//

protocol UserRepository{
    func fetchUsers()->[UserModel]
}
