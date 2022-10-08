//
//  orderListView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            SubHeader(orderModel: orderModel,title: "Your Order")
            List(orderModel.orders){ iteam in
                OrderRow(orderItem:iteam)
            }
            .listStyle(.plain)
        }
    }
}

struct orderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}

