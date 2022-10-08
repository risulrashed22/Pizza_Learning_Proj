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
                Text("Resturant")
                    .bold()
                    //.offset(x: -10, y: 30)
                    .font(Font.custom("Arial", fixedSize: 20))
                    .foregroundColor(Color("B1"))
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


