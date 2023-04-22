//
//  ItineraryModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import Foundation
import SwiftUI

struct ItineraryEvents {
    var events: [EventModel] = [
        EventModel(name: "Flight to France", date: Date(), image: Image("eiffel-tower"), withUsers: [UserModel(user: "helen"), UserModel(user: "howl"), UserModel(user: "sophie")]),
        EventModel(name: "Check in hotel", date: Date(), image: Image("eiffel-tower"), withUsers: [UserModel(user: "helen"), UserModel(user: "sophie")]),
        EventModel(name: "Eiffel Tower tour", date: Date(), image: Image("eiffel-tower"), withUsers: [UserModel(user: "helen"), UserModel(user: "howl"), UserModel(user: "sophie")]),
    ]
}


struct EventModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var image: Image
    var withUsers: [UserModel]
}
