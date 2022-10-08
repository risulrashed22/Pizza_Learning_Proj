//
//  MenuView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

var menuList = MenuModel().menu
struct MenuView: View {
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        VStack{
            SubHeader(orderModel: orderModel,title: "Menu")
            NavigationView{
                List(menuList){ iteam in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: iteam)){
                    MenuList(menuItem: iteam)
                    // Following code makes content use all the white space on the left and right
                        .listRowInsets(EdgeInsets())
                    }
                    .navigationTitle("Pizza List")
                }
                .listStyle(.plain)
            }
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MenuView(orderModel: OrderModel())
            //.environment(\.dynamicTypeSize, .accessibility5)
        }
    }
}


