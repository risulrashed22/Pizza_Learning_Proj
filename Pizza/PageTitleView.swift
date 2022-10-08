//
//  PageTitileView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct PageTitleView: View {
    var isDisplayOrder: Bool? = nil
    var title: String
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: isDisplayOrder ?? false ? "chevron.up.square" : "chevron.down.square")
                .font(.title)
                .foregroundColor(isDisplayOrder != nil ? Color("B3") : .clear)
                .padding(),
            alignment: .leading
        )
        .foregroundColor(Color("B3"))
        .background(Color("B1"))
    }
}

struct PageTitileView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
