//
//  SendBank.swift
//  4th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/11/25.
//

import SwiftUI

struct SendBank: Identifiable {
    let id = UUID()
    var image: String
    var bank: String
    var bankName: String
}

extension SendBank {
    static let model: [SendBank] = [
        SendBank(image: "1", bank: "하나은행157-891652-62107", bankName: "WINGO통장"),
        SendBank(image: "3", bank: "삼성증권7112898902-01", bankName: "종합매매"),
        SendBank(image: "5", bank: "KB국민96314175848", bankName: "김정희"),
        SendBank(image: "8", bank: "카카오뱅크3333-20-8455642", bankName: "내입출금통장"),
        SendBank(image: "9", bank: "IBK기업286-104115-01-019", bankName: "김래언"),
        SendBank(image: "5", bank: "KB국민96314175848", bankName: "김정희"),
        SendBank(image: "8", bank: "카카오뱅크3333-20-8455642", bankName: "내입출금통장"),
        SendBank(image: "9", bank: "IBK기업286-104115-01-019", bankName: "김래언"),
    ]
}
