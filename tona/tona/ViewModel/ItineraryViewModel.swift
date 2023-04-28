//
//  ItineraryViewModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

class ItineraryViewModel: ObservableObject {

    @Published private var model: ItineraryData = ItineraryData()
<<<<<<< HEAD
=======
    
    var itinerariesData: [ItineraryModel] {
        model.itineraries
    }
>>>>>>> dd8cf079bddbbdedbbac383a08c9331b050a90d9

    var events: [EventModel] {
        model.parisEvents
    }

        
}
