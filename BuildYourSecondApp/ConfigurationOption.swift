//
//  ConfigurationOption.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation

struct ConfigurationOption: Identifiable, Codable,Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
}
