//
//  ItineraryModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import Foundation
import SwiftUI

struct ItineraryItems {
    var items: [EventModel] = [
        EventModel(name: "Flight", date: Date(), photo: Image("eiffel-tower.jpeg"), withUsers: [UserModel(user: "helen"), UserModel(user: "brian")])
    ]
}


struct EventModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var photo: Image
    var withUsers: [UserModel]
}
