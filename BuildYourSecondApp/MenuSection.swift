//
//  MenuSection.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation


struct MenuSection: Identifiable, Codable {
    let id: UUID
    let name: String
    let drinks: [Drink]
}
