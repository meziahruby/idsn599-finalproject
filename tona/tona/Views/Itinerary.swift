//
//  Itinerary.swift
//  tona
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

struct Itinerary: View {
    var items: EventModel
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Los Angeles")
                        .font(.title3)
                        .foregroundColor(Color(.sRGB, red: 235/255, green: 155/255, blue: 83/255))
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                    Text("Back to Trips >")
                }
                .padding(.top, 76)
                .padding(.horizontal)
                Text("Friday 4/17")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding()
                    .font(.title.weight(.medium))
                    .padding(.bottom)
                    .foregroundColor(Color(.sRGB, red: 115/255, green: 233/255, blue: 227/255))
                VStack(spacing: 2) {
                    ForEach(0..<5) { item in items // Replace with your data model here
                        HStack(alignment: .top) {
                            VStack(spacing: 2) {
                                Image(systemName: "circle.fill")
                                    .imageScale(.medium)
                                    .font(.footnote)
                                    .foregroundColor(.primary)
                                Rectangle()
                                    .frame(width: 2)
                                    .clipped()
                            }
                            .frame(height: 70)
                            .clipped()
                            .foregroundColor(Color(.systemGray5))
                            VStack(alignment: .leading, spacing: 4) {
                                Text("9:22 AM ")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                Text("Flight from SEA to LAX")
                                    .font(.headline.weight(.medium))
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    HStack(alignment: .top) {
                        VStack(spacing: 2) {
                            Image(systemName: "circle.fill")
                                .imageScale(.medium)
                                .font(.footnote)
                                .foregroundColor(Color(.sRGB, red: 235/255, green: 155/255, blue: 83/255))
                            Rectangle()
                                .frame(width: 2)
                                .clipped()
                                .foregroundColor(.primary)
                        }
                        .frame(height: .infinity)
                        .clipped()
                        .foregroundColor(Color(.tertiaryLabel))
                        Image("myImage")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 55)
                            .clipped()
                            .mask {
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                            }
                            .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.25), radius: 8, x: 0, y: 4)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("1:00 PM")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text("Lunch @ République")
                                .font(.headline.weight(.medium))
                        }
                        HStack {
                            Image("myImage")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .clipped()
                                .mask { RoundedRectangle(cornerRadius: 104, style: .continuous) }
                            Image("myImage")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .clipped()
                                .mask { RoundedRectangle(cornerRadius: 104, style: .continuous) }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack(alignment: .top) {
                        VStack(spacing: 2) {
                            Image(systemName: "circle.fill")
                                .imageScale(.medium)
                                .font(.footnote)
                                .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
                            Rectangle()
                                .frame(width: 2)
                                .clipped()
                                .foregroundColor(Color(.tertiaryLabel))
                        }
                        .frame(minHeight: .infinity)
                        .clipped()
                        .foregroundColor(Color(.systemGray5))
                        VStack(alignment: .leading, spacing: 4) {
                            Text("2:30 PM")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text("Broad Museum")
                                .font(.headline.weight(.medium))
                            Image("myImage")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                                .clipped()
                                .mask {
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                                }
                                .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.25), radius: 8, x: 0, y: 4)
                                .padding(.top, 4)
                                .padding(.bottom)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
        .clipped()
        .padding(.leading, 20)
        .background {
            RoundedRectangle(cornerRadius: 4, style: .continuous)
                .fill(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
        }
    }
}

struct Itinerary_Previews: PreviewProvider {
    static var previews: some View {
        Itinerary()
    }
}
