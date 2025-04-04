//
//  Rpwhk.swift
//  3rd_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 4/4/25.
//

import SwiftUI

struct card: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let sum: String
    let time: String
    let pay: String
}

extension card{
    static let pay: [[card]] = [
        [card(name: "카카오 택시_0", icon: "2_1", sum: "38,841원",time:"11:13",pay:"-6,200원"),
        card(name: "카카오 택시 선승인", icon: "2_1", sum: "45,041원",time:"11:00",pay:"+6,900원"),
        card(name: "카카오 택시 선승인", icon: "2_1", sum: "-6,900원",time:"11:00",pay:"-6,900원")],
        [card(name: "플렉스방PC방", icon: "2_2", sum: "45,041원",time:"22:44",pay:"-5,500원"),
        card(name: "플렉스PC방", icon: "2_2", sum: "50,541원",time:"21:35",pay:"-5,000원"),
        card(name: "씨유한동대오석관점", icon: "2_3", sum: "55,541원",time:"16:17",pay:"-2,000원"),
        card(name: "씨유한동대오석관점", icon: "2_3", sum: "57,541원",time:"15:59",pay:"-4,400원"),
        card(name: "카카오 택시_0", icon: "2_1", sum: "61,941원",time:"10:00",pay:"-7,000원"),
        card(name: "카카오 택시 선승인", icon: "2_1", sum: "68,941원",time:"09:47",pay:"+7,300원"),
        card(name: "카카오 택시 선승인", icon: "2_1", sum: "61,641원",time:"09:47",pay:"-7,300원"),
        card(name: "카카오 택시 선승인", icon: "2_1",sum:"68,941원",time:"09:46",pay:"+7,300원"),
        card(name: "카카오 택시 선승인", icon: "2_1",sum:"61,641원",time:"09:46",pay:"-7,300원")]
    ]
}
