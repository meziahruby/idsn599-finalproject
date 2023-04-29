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
    
    var itinerary: ItineraryModel
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(itinerary.city).textCase(.uppercase)
                        .font(Font(UIFont.systemFont(ofSize: 20, weight: .medium, width: .expanded)))
                        .foregroundColor(tonaOrange)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                .padding(.top, 25)
                .padding(.horizontal)
                
                Text("Tuesday, May 2")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.title.weight(.medium))
                    .foregroundColor(tonaBlue)
                
                VStack(spacing: 0) { // Remove space between Itinerary items so the timeline looks connected
                    ForEach(itinerary.events) { event in
                        EventRow(event: event)
                    }
                    Text("- End of Day -").foregroundColor(.gray)
                }
            }
        }
        .background(tonaTeal)
    }
}

struct Itinerary_Previews: PreviewProvider {
    static var previews: some View {
        let itinerarySample =
            ItineraryModel(
                city: "paris",
                dates: "",
                events: [
                    EventModel(
                        name: "Louvre Museum",
                        date: Date(timeIntervalSince1970: 1683043200), // May 2, 9am
                        image: Image("paris"),
                        withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
                    )])
        Itinerary(itinerary: itinerarySample)
    }
}
