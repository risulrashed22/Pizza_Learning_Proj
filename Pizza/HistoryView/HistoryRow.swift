//
//  HistoryRow.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct HistoryRow: View {
    var myHistoryItem: HistoryItem
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image("\(myHistoryItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: .gray.opacity(0.8), radius: 20, x: 0, y: 0)
            Text("\(myHistoryItem.name)")
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.circle")
                .padding()
                .font(.title),
            alignment: .trailing
        )
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRow(myHistoryItem: HistoryModel().historyItems[0])
    }
}
