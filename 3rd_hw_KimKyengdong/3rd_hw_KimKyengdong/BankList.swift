//
//  BankList.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/3/25.
//

import SwiftUI

struct bank: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let sum: String
}

extension bank{
    static let banks: [bank] = [
        bank(name: "WINGO통장", icon: "1", sum: "339,390원"),
        bank(name: "토스뱅크통장", icon: "2", sum: "38,841원"),
        bank(name: "토스뱅크에 쌓인 이자", icon: "3", sum: "38,841원"),
        bank(name: "MY입출금통장", icon: "4", sum: "38,841원"),
        bank(name: "KB나라사랑우대통장", icon: "5", sum: "38,841원"),
        bank(name: "보통예금(BK 나라사랑통장)", icon: "6", sum: "38,841원"),
        bank(name: "토스뱅크외화통장", icon: "7", sum: "38,841원"),
        bank(name: "입출금통장", icon: "8", sum: "38,841원"),
        bank(name: "보통예금(BK 주거래생활금융통장)", icon: "9", sum: "1,051원"),
        bank(name: "투자 모아보기", icon: "10",sum:"15,257,990원")
    ]
}
