//
//  ContentView.swift
//  tona
//
//  Created by Meziah Cristobal on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ItineraryViewModel()
    
    var body: some View {
        TabView {
            ScrollView {
                Itinerary().environmentObject(viewModel)
            }
            .tabItem { Label("Trips", systemImage: "airplane.departure")}
            // Insert other tabs here
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
