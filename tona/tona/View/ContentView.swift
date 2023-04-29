//
//  ContentView.swift
//  tona
//
//  Created by Meziah Cristobal on 4/10/23.
//
/*
 This is the main view of the app with the three tab pages.
 */

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ItineraryViewModel()
    @StateObject var findviewModel = FindViewModel()
    
    var body: some View {
        VStack {
            TabView{
                TripsScreen()
                    .tabItem{
                        Label("home", systemImage: "house.fill")
                    }
                PlannedTrips()
                    .environmentObject(viewModel)
                    .tabItem{
                        Label("trips", systemImage: "paperplane.circle.fill")
                    }
                FindView()
                    .environmentObject(findviewModel)
                    .tabItem{
                        Label("discover", systemImage: "magnifyingglass.circle.fill")
                    }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FindViewModel())
            .environmentObject(ItineraryViewModel())
    }
}
