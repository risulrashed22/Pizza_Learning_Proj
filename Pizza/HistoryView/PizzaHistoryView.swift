//
//  PizzaHistoryView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct PizzaHistoryView: View {
    @State var imageID: Int = 0
    var body: some View {
        VStack {
            ContentHeader()
            SelectedImageView(imageName: "\(imageID)_250w")
            HistoryList(imageID: $imageID)
        }
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHistoryView()
        PizzaHistoryView()
            .preferredColorScheme(.dark)
    }
}
