//
//  PizzaApp.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

@main
struct PizzaApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView(orderModel: OrderModel())
            RootTab()
                .environmentObject(UserPreferences())
        }
    }
}
