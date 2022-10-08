//
//  OrderRow.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct OrderRow: View {
    var orderItem: OrderItem
    var body: some View {
        HStack{
            Text(orderItem.description)
                //.fontWeight(Font.Weight.bold)
                .fontWeight(.bold) // Same as top line
            Spacer()
            Text(orderItem.formattedExtendedPrice)
                .bold()
        }
    }
}

struct OrderRow_Previews: PreviewProvider {
    static var previews: some View {
        OrderRow(orderItem: testOrderItem)
            .environment(\.dynamicTypeSize, .accessibility5)
    }
}
