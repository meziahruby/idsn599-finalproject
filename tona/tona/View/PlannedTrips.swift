//
//  PlannedTrips.swift
//  tona
//
//  Created by Meziah Cristobal on 4/23/23.
//

import SwiftUI

struct PlannedTrips: View {
    
    @EnvironmentObject var viewModel: ItineraryViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("My Trips")
                            .font(.largeTitle.weight(.bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 50).padding(.bottom, 8)
                            .foregroundColor(tonaBlue)
                    }
                    .padding(.horizontal).padding(.bottom)
                    VStack {
                        Text("Upcoming".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font(UIFont.systemFont(ofSize: 18, weight: .medium, width: .expanded)))
                            .foregroundColor(tonaOrange)
                        
                        ForEach(viewModel.itinerariesData) { itineraryData in
                                NavigationLink(destination: Itinerary(itinerary: itineraryData)) {
                                    HStack(spacing: 10) {
                                        Image(itineraryData.city)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 70, height: 70)
                                            .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                                        VStack(alignment: .leading) {
                                            Text(itineraryData.city)
                                                .font(.title2).foregroundColor(.white)
                                            Text(itineraryData.dates)
                                                .font(.title3).foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                }
                            }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
            .background(tonaTeal)
        }
    }
}

struct PlannedTrips_Previews: PreviewProvider {
    static var previews: some View {
        PlannedTrips().environmentObject(ItineraryViewModel())
    }
}
