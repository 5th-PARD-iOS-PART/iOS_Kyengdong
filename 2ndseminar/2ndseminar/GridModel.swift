//
//  GridModel.swift
//  2ndseminar
//
//  Created by Kim Kyengdong on 3/26/25.
//

import SwiftUI

struct GridModel:Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

extension GridModel{
    static let sample: [GridModel]=[
        GridModel(title: "Apple", imageName: "photo1"),
        GridModel(title: "Apple", imageName: "photo2"),
        GridModel(title: "Apple", imageName: "photo3"),
    ]
}
