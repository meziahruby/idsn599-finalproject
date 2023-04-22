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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        Itinerary().environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
