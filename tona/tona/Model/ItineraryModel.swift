//
//  ItineraryModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import Foundation
import SwiftUI

struct ItineraryData {
    
    // Using a `get` here so parisEvents and nycEvents can be used as computed properties
    var itineraries: [ItineraryModel] {
        get {
            [ItineraryModel(city: "paris", events: parisEvents),
             ItineraryModel(city: "nyc", events: nycEvents)]
        }
    }
    
    var nycEvents: [EventModel] = []
    
    var parisEvents: [EventModel] = [
            EventModel(
                name: "Louvre Museum",
                date: Date(timeIntervalSince1970: 1683043200), // May 2, 9am
                image: Image("paris"),
                withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
            ),
            EventModel(
                name: "Walk around Palais Royal Metro Station",
                date: Date(timeIntervalSince1970: 1683052200), // May 2, 11:30am
                image: Image("paris7"),
                withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
            ),
            EventModel(
                name: "Lunch at Le Nemours Cafe",
                date: Date(timeIntervalSince1970: 1683054000), // May 2, 12pm
                image: Image("paris2"),
                withUsers: [UserModel(user: "Friend1")]
            ),
            EventModel(
                name: "Jardin Des Tuileries",
                date: Date(timeIntervalSince1970: 1683059400), // May 2, 1:30pm
                image: Image("tuileries"),
                withUsers: [UserModel(user: "Friend1")]
            ),
            EventModel(
                name: "Walk around Arc de Triomphe",
                date: Date(timeIntervalSince1970: 1683066600), // May 2, 3:30pm
                image: Image("paris1"),
                withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
            ),
            EventModel(
                name: "River Seinne cruise",
                date: Date(timeIntervalSince1970: 1683072000), // May 2, 5pm
                image: Image("seine"),
                withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
            ),
            EventModel(
                name: "Dinner at Eiffel Tower",
                date: Date(timeIntervalSince1970: 1683079200), // May 2, 7pm
                image: Image("eiffel-tower"),
                withUsers: [UserModel(user: "Friend1")]
            ),
        ]
}

struct ItineraryModel: Identifiable {
    var id: UUID = UUID()
    var city: String
    var events: [EventModel]
}

struct EventModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var image: Image
    var withUsers: [UserModel]
}
