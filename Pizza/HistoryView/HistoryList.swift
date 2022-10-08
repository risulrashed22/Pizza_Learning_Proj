//
//  HistoryList.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct HistoryList: View {
    var historyModel = HistoryModel()
    @Binding var imageID: Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems) { item in
                NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)){
                    HistoryRow(myHistoryItem: item)}
            }
            .listStyle(.plain)
        }
    }
}

struct HistoryList_Previews: PreviewProvider {
    static var previews: some View {
        HistoryList(imageID: .constant(0))
    }
}
