//
//  GetUserListUseCaseTests.swift
//  MVVM+UseCase-practiceTests
//
//  Created by 이유현 on 4/7/25.
//

import XCTest
@testable import MVVM_UseCase_practice

/*
 실습3
 목표: GetUserListUseCaseImpl에 대한 unit test를 구현해봅시다.
 
 0. GetUserListUseCaseImpl가 어떤 로직으로 이루어져 있는지 파악한다
 1. 테스트 1번 함수를 구현한다.
 2. 테스트 2번 함수를 구현한다.
 3. 테스트 3번 함수를 구현한다.
 4. 각각의 테스트에 대해 코드 왼쪽 다이아몬트 아이콘을 클릭해 테스트를 실행해본다
    - 녹색 체크가 뜨면 성공
    - 빨간색 x가 뜨면 실패 (테스트 코드를 다시 짜야한다.)
 */

final class GetUserListUseCaseTests: XCTestCase {
    
    // 테스트에 사용될 Mock repository와 useCase
    var mockRepository: UserRepository!
    var useCase: GetUserListUseCase!
    
    // 각 테스트 전에 초기화
    override func setUpWithError() throws {
        mockRepository = MockUserRepositoryImpl()
        useCase = GetUserListUseCaseImpl(repository: mockRepository)
        
        // 기본값
        mockRepository.addUser(UserModel(name: "이유현", part: "iOS"))
        mockRepository.addUser(UserModel(name: "김나임", part: "server"))
        mockRepository.addUser(UserModel(name: "권채은", part: "web"))
    }
    
    // 각 테스트 후 정리
    override func tearDownWithError() throws {
            mockRepository = nil
            useCase = nil
    }
    
    // ✅ 테스트 1: 검색어가 비어있을 때 전체 유저를 반환해야 함
    func test_getUserList_whenKeywordIsEmpty_shouldReturnAllUsers() {
        let keyword: String = ""
        
        let userList = useCase.execute(keyword)
        
        XCTAssertEqual(userList.count, 3, "검색어가 비어있었을 때 전체 유저를 반환하지 못함")
    }
    
    // ✅ 테스트 2: 검색어에 해당하는 유저만 반환되어야 함
    func test_getUserList_whenKeyword_shouldReturnKeywordUsers() {
        let keyword: String = "이유현"
        let searchedUser = useCase.execute(keyword)
        
        XCTAssertEqual(searchedUser.count, 1, "하나의 유저만 반환하지 못함")
        XCTAssertEqual(searchedUser[0].name, keyword, "검색어에 해당하는 유저를 반환하지 못함")
        
    }

    // ✅ 테스트 3: 검색어에 해당하는 유저가 없으면 빈 배열 반환
    func test_getUserList_whenKeywordNotList_shouldReturnEmpty() {
        let keyword: String = "유재혁"
        
        let userList = useCase.execute(keyword)
        
        XCTAssertEqual(userList.count, 0, "검색어에 해당하는 유저가 없을 때 빈 배열을 반환하지 못함")
    }

}
