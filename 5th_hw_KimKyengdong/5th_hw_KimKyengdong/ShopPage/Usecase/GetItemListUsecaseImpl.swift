//
//  GetItemListUsecaseImpl.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//
import Foundation

final class GetItemListUsecaseImpl:GetItemListUsecase{
    private let repository : ShopDataRepository
    
    init(repository: ShopDataRepository) {
        self.repository = repository
    }
    let categories:[String]=["모두","특가","식품","의류","전자제품","뷰티"]
    func execute(_ tabIndex: Int) -> [Item] {
        let items = repository.fetchUsers()
        let selectedCategory:String = categories[tabIndex]
        if tabIndex == 0 {
            return items
        }
        else if tabIndex == 1 {
            return items.filter { $0.special }
        }
        else {
            return items.filter{ $0.category == selectedCategory}
        }
    }
}
