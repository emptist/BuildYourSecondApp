//
//  FileManagerDocumentDirectory.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
