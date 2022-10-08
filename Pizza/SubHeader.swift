//
//  SubHeadel.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct SubHeader: View {
    @ObservedObject var orderModel: OrderModel
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 10)
                .foregroundColor(Color("B3"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .foregroundColor(Color("B3"))
        }.background(Color("B2"))
    }
}

struct SubHeadel_Previews: PreviewProvider {
    static var previews: some View {
        SubHeader(orderModel: OrderModel(), title: "Sub Title Goes Here")
    }
}
