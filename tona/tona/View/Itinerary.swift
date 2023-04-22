//
//  Itinerary.swift
//  tona
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

struct Itinerary: View {
    
    @EnvironmentObject var viewModel: ItineraryViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Los Angeles")
                        .font(.title3)
                        .foregroundColor(Color(.sRGB, red: 235/255, green: 155/255, blue: 83/255))
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                    Text("Back to Trips >")
                }
                .padding(.top, 76)
                .padding(.horizontal)
                Text("Friday 4/17")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding()
                    .font(.title.weight(.medium))
                    .padding(.bottom)
                    .foregroundColor(Color(.sRGB, red: 115/255, green: 233/255, blue: 227/255))
                VStack() {
                    ForEach(viewModel.events) { event in
                        Event(event: event)
                    }
                }
            }
        }
        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
    }
}

struct Itinerary_Previews: PreviewProvider {
    static var previews: some View {
        Itinerary().environmentObject(ItineraryViewModel())
    }
}
