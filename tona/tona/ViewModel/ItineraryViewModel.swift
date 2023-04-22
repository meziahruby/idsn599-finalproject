//
//  ItineraryViewModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

class ItineraryViewModel: ObservableObject {

    @Published private var model: ItineraryEvents = ItineraryEvents()

    var events: [EventModel] {
        model.events
    }

        
}
