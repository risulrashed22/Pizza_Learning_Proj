//
//  RootTab.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct RootTab: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
            PizzaHistoryView()
                .tabItem{
                    Image(systemName: "list.bullet.circle")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTab_Previews: PreviewProvider {
    static var previews: some View {
        RootTab()
            .environmentObject(UserPreferences())
    }
}
