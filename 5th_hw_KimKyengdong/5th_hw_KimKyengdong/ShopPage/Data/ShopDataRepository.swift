//
//  ShopDataRepository.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import Foundation

protocol ShopDataRepository {
    func fetchUsers() -> [Item]
}
