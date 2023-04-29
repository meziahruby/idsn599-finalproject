
//  2TripsScreen.swift
//  MyProject
//
//  Designed in DetailsPro - Janae Strange
//  Copyright © (My Organization). All rights reserved.
//
//homescreen for tona app.
//Doug - this is the work I could accomplish. Deka and Mezhia did amazing work on their pages/views so please give them the grade tey deserve. :)
//Simple page but proud of the adding and aligning of iamges, using the HeaderView. Would have liked to add a View for the images and text/icon overlay.
//Meziah was invaluable

import SwiftUI

struct TopView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image("tona_logo")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 90)
                .clipped()

            .frame(maxWidth: .infinity)
        }
    }
}

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
               HeaderView()
                Divider()
                    .padding(.vertical)
                Text("We're Going!")
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
                    .multilineTextAlignment(.center)
                    .padding(.leading, 13.0)
                HStack {
                    Spacer()
                    LocaleView(image: "paris", title: "Paris")
                        .padding(.trailing, 100.0)
                }
                LocaleView(image: "nyc", title: "New York")
                    .padding(.leading, 65.0)
                Spacer()
                    .frame(height: 60)
                
                Text("Can We Go?")
                .font(.largeTitle.weight(.medium))
                .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
                .padding(.leading, 30.0)
                LocaleView(image: "sedona", title: "Sedona")
                    .padding(.trailing, 100.0)
                LocaleView(image: "finland", title: "Finland")
                    .padding(.leading, 65.0)
                LocaleView(image: "dubai", title: "Dubai")
                    .padding(.trailing, 100.0)
            }
        }
        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255)) //background color
    }
}

struct LocaleView: View {

    let image: String
    let title: String
    
    //goal was to link the "+" to the Itinerary page
    var body: some View {
        NavigationLink(destination: Itinerary()) {
            ZStack {
                Image(image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                    .frame(width: 304.0, height: 270)
                    .clipped()
                VStack {
                    Spacer()
                    HStack {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.title3.weight(.semibold))
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                }
            }
            .padding(.bottom, 16)
        }
    }
}
// this gradient border was meant to encircle each Image
struct GradientBackground: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.gray, Color(.systemGray3)]), startPoint: .leading, endPoint: .trailing)
            .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .padding(3)
    }
}
struct Previews_TripsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
