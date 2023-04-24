
//
//  2TripsScreen.swift
//  MyProject
//
//  Designed in DetailsPro - Janae Strange
//  Copyright © (My Organization). All rights reserved.
//

    import SwiftUI


struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image("tona_logo")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 90)
                .clipped()
            HStack(spacing: 16) {
                Image("Profile1")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing)
                    .frame(width: 130, height: 120, alignment: .center)
                    .clipped()
                VStack(alignment: .leading, spacing: 8) {
                    Text("Teresa")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    Text("reminder: dinner at 5:30pm mst")
                        .foregroundColor(.white)
                        .font(.body)
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct TripsScreen: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HeaderView()
                Divider()
                    .padding(.vertical)
                Text("We're Going!")
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
                HStack {
                    Spacer()
                    TripView(image: "paris", title: "Paris")
                        .padding(.all)
                }
                TripView(image: "nyc", title: "New York")
                Spacer()
                    .frame(height: 60)


struct TripView: View {
    let image: String
    let title: String
    
    var body: some View {
        ZStack {
            Image(image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
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
