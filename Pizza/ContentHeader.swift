//
//  ContentHeader.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct ContentHeader: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("Resturant")
                    .offset(x: -10, y: 30)
                    .font(Font.custom("Arial", fixedSize: 20))
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeader()
            .environment(\.dynamicTypeSize, .accessibility5)
    }
}


