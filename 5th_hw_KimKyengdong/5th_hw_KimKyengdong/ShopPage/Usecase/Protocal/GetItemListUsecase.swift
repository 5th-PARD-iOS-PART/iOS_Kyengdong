//
//  GetItemList.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import Foundation


protocol GetItemListUsecase {
    func execute(_ tabIndex: Int) -> [Item]
}

