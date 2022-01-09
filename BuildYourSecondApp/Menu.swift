//
//  Menu.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation


class Menu: ObservableObject, Codable {
    let sections: [MenuSection]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            sections = menuData.sections
        } catch {
            fatalError("menu.json not found or corrupt")
        }
    }
}
