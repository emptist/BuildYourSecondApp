//
//  CustomizeView.swift
//  BuildYourSecondApp
//
//  Created by jk on 2022/1/9.
//

import SwiftUI

struct CustomizeView: View {
    let drink: Drink
    @EnvironmentObject var menu: Menu
    @State private var size = 0
    @State private var isDecaf = false
    @State private var extraShots = 0
    @State private var milk = ConfigurationOption.none
    @State private var syrup = ConfigurationOption.none

//    enum sizeOpts {
//        case small, medium, large
//    }
//    this enum is not so good
    
    let sizeOptions = ["Small","Medium","Large"]
    var caffeine: Int {
        var caffeineAmount = drink.caffeine[size]
        caffeineAmount += (extraShots * 60)
        
        if isDecaf {
            caffeineAmount /= 20
        }
        return caffeineAmount
    }
    
    var calories: Int {
        var caloriesAmount = drink.baseCalories
        caloriesAmount += extraShots * 10
        
        if drink.coffeeBased {
            caloriesAmount += milk.calories
        } else {
            caloriesAmount += milk.calories / 8
        }
        caloriesAmount += syrup.calories
        return caloriesAmount * (size + 1)
    }
    
    var body: some View {
        Form {
            Section("Basic Options") {
                Picker("Size", selection: $size) {
                    ForEach(sizeOptions.indices) { index in
                        Text(sizeOptions[index])
                    }
                }
                .pickerStyle(.segmented)
                if drink.coffeeBased {
                    Stepper("Extra Shotes: \(extraShots)", value: $extraShots, in: 0...8)
                }
                Toggle("Decaffeinated",isOn: $isDecaf)
            }
            
            Section("Customizations") {
                Picker("Milk",selection: $milk) {
                    ForEach(menu.milkOptions) { option in
                        Text(option.name)
                            .tag(option)
                    }
                }
                if drink.coffeeBased {
                    Picker("Syrup", selection: $syrup) {
                        ForEach(menu.syrupOptions) { option in
                            Text(option.name)
                                .tag(option)
                        }
                    }
                }
            }
            
            Section("Estimates") {
                Text("**Caffeine:** \(caffeine)mg")
                Text("**Calories:** \(calories)")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(drink.name)
    }
}

struct CustomizeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeView(drink: Drink.example)
            .environmentObject(Menu())
    }
}
