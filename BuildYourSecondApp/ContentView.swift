//
//  ContentView.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import SwiftUI

struct ContentView: View {
    // vs ObservedObject which is made else where
    @StateObject var menu = Menu()
    
    var body: some View {
        MenuView()
            .environmentObject(Menu())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.environmentObject(Menu())
    }
}
