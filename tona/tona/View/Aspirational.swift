//
//  Aspirational.swift
//  tona
//
//  Created by Janae Strange on 4/23/23.
//

import SwiftUI

struct Aspirational: View {
    var body: some View {
        Text("Can We Go?")
            .font(.largeTitle.weight(.medium))
            .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
        TripView(image: "sedona", title: "Sedona")
        TripView(image: "finland", title: "Finland")
        TripView(image: "   dubai", title: "Dubai")
    }

    .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
}


struct Aspirational_Previews: PreviewProvider {
    static var previews: some View {
        Aspirational()
    }
}
