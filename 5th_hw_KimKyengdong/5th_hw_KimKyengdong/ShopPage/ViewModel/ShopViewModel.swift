//
//  ShopViewModel.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import Foundation
import Observation
import SwiftUICore

@Observable
final class ShopViewModel{
    var itemList : [Item] = []
    //    var showTab: Bool = false
    
    private let getItemListUsecase: GetItemListUsecase
    
    init(getItemListUsecase: GetItemListUsecase) {
        self.getItemListUsecase = getItemListUsecase
        self.itemList = getItemListUsecase.execute(0)
    }
    
    //MARK: - View에게 데이터를 제공하는 로직 (View와 관련된 로직만)
    
    // sheet on /off
    //    func toggleSheet(){
    //        showSheet.toggle()
    //    }
    //
    // 검색어에 따라 유저 불러오기 (전체 / 검색 필터링)
    func getItemList(_ tabIndex: Int){
        let items = getItemListUsecase.execute(tabIndex)
        self.itemList = items
    }
}
