//
//  ContentView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeader()
//                .layoutPriority(2)
            Button(action:{self.isMenuDisplayed.toggle()}){
                PageTitleView(isDisplayOrder: isMenuDisplayed, title: "Order Pizza"
                )
            
            }
            MenuView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .preferredColorScheme(ColorScheme.dark)
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            
        }
    }
}
