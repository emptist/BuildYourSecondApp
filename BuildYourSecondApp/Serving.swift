//
//  Serving.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation

struct Serving: Identifiable, Codable {
    var id: UUID
    let name: String
    let description: String
    let caffeine: Int
    let calories: Int
}
