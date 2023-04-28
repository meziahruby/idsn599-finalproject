
//  2TripsScreen.swift
//  MyProject
//
//  Designed in DetailsPro - Janae Strange
//  Copyright © (My Organization). All rights reserved.
//
//more Views to be created to streamline code for turn-in

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
        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255)) // background color
    }
}

struct LocaleView: View {

    let image: String
    let title: String
    
    var body: some View {
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
                .background(GradientBackground())
            }
        }
        .padding(.bottom, 16)
    }
}
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
