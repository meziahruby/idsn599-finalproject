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
            [ItineraryModel(city: "Paris", dates: "May 2-7", events: parisEvents),
             ItineraryModel(city: "New York City", dates: "Oct 10-15", events: nycEvents)]
        }
    }
    
    var nycEvents: [EventModel] = []
    
    // To set a specific time and date, I used a regular human time to `timeIntervalSince1970` converter
    var parisEvents: [EventModel] = [
            EventModel(
                name: "Louvre Museum",
                date: Date(timeIntervalSince1970: 1683043200), // May 2, 9am
                image: Image("Paris"),
                withUsers: [UserModel(user: "Friend1"), UserModel(user: "howl"), UserModel(user: "Friend2")]
            ),
            EventModel(
                name: "Walk around Palais Royal Metro Station and take pictures",
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
    var dates: String // Ideally dates will be a computed value but for time's sake, it's mocked here
    var events: [EventModel]
}

struct EventModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var image: Image
    var withUsers: [UserModel]
}
