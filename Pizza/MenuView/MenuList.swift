//
//  MenuList.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct MenuList: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 20){
                Image("\(menuItem.id)_100w")
                    //.cornerRadius(10)
                    .clipShape(Capsule())
                    .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 0)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    MenuRating(myCount: menuItem.rating)
                }
                //Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(menuItem: MenuModel().menu[4])
            //.environment(\.dynamicTypeSize, .accessibility5)
    }
}


