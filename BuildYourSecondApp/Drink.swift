//
//  Drink.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation

struct Drink: Identifiable, Codable {
    let id: UUID  // universely unique id
    let name: String
    static let example = Drink(id: UUID(), name: "example drink")
}
