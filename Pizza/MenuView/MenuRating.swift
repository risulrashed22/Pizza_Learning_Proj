//
//  MenuRating.swift
//  Pizza
//
//  Created by Risul Rashed
//

import SwiftUI

struct MenuRating: View {
    var myCount: Int = 5
    var ratings: [String]{
        let mySymbol = "\(myCount).circle"
        return Array(repeating: mySymbol, count: myCount)
    }
    var body: some View {
        HStack {
            // ratings by itself will show error in list/ForEach, so we put it's id.
            // id is saying whatever value is it's own id
            // this might not always work for complicate list, there is a second version of it
            ForEach(ratings, id: \.self){ item in // way 1 to get rid of error (2nd way is in MenuView)
                Image(systemName: item)
                    .font(.title3)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct MenuRating_Previews: PreviewProvider {
    static var previews: some View {
        MenuRating(myCount: 5)
    }
}
