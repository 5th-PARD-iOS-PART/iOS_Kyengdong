//
//  ShopDatamodel.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import Foundation


struct Item:Identifiable{
    let id = UUID()
    let name:String
    let price:Int
    let image:String
    let category:String
    let info:String
    let special:Bool
}
