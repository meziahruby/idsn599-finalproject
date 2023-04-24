//
//  ContentView.swift
//  tona
//
//  Created by Meziah Cristobal on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ItineraryViewModel()
    @StateObject var findviewModel = FindViewModel()
    
    var body: some View {
        VStack {
            TabView{
                Itinerary()
                    .environmentObject(viewModel)
                    .tabItem{
                        Label("plans", systemImage: "paperplane.circle.fill")
                    }
                FindView()
                    .environmentObject(findviewModel)
                    .tabItem{
                        Label("find", systemImage: "magnifyingglass.circle.fill")
                    }
                HomeView()
                    .tabItem{
                        Label("goal", systemImage: "globe.desk")
                    }
            }
            .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
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
