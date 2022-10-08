//
//  SelectedImageView.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct SelectedImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .gray, radius: 10, x: 0, y: 0)
            .padding()
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(imageName: "1_250w")
    }
}
