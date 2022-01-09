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
    let caffeine: [Int]
    let coffeeBased: Bool
    let servedWithMilk: Bool
    let baseCalories: Int
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    static let example = Drink(id: UUID(), name: "example drink", caffeine: [60,120,200],coffeeBased: true,servedWithMilk: true,baseCalories: 100)
}
