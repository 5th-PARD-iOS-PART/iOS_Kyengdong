//
//  ShopData.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import Foundation



final class ShopData : ShopDataRepository {
    
    private var items: [Item] = []
    
    init() {
        let names: [String] = ["모자", "모자", "버즈3pro", "fruittella", "귀여운 헤어밴드", "하리보 젤리","미니선풍기", "부먹밥", "구운감자", "썬크림", "향수"]
        let images: [String] = ["hat1", "hat2", "buds", "fruittella", "hairband", "haribo","minifan", "mylanch", "snack", "suncream", "tommy"]
        let prices: [Int] = [123,1234,1543,235,2634,3254,23462,3253,2153,1435,1235]
        let categorys:[String] = ["의류","의류","전자제품","식품","의류","식품","전자제품","식품","식품","뷰티","뷰티"]
        let specials: [Bool] = [true,true,true,true,true,true,true,true,true,true,true]
        let infos:[String] = ["hat1", "hat2", "buds", "fruittella", "hairband", "haribo","minifan", "mylanch", "snack", "suncream", "tommy"]
        
        var newItemList: [Item] = []
        
        for i in 0..<names.count {
            let newItem = Item(name: names[i], price:prices[i], image: images[i],category:categorys[i],info:infos[i], special:specials[i])
            newItemList.append(newItem)
        }
        
        self.items = newItemList
    }
    
    func fetchUsers() -> [Item] {
        return items
    }
}


