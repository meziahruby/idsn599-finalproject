//
//  NavigationwithScroll.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI


struct FindView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .leading) {
                    HStack(spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(.white)
                        Text("Where are you going next?")
                            .foregroundColor(.white)
                    }
                    .padding()
                    Capsule(style: .continuous)
                        .frame(width: 375, height: 49, alignment: .top)
                        .clipped()
                        .foregroundColor(Color(.systemFill))
                }
                .padding()
                VStack(spacing: 12) {
                    ForEach(0..<5) { _ in // Replace with your data model here
                        HStack {
                            ForEach(0..<3) { _ in // Replace with your data model here
                                Image("myImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .mask { RoundedRectangle(cornerRadius: 6, style: .continuous) }
                            }
                        }
                    }
                }
                .padding(16)
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 98)
            .padding(.bottom, 150)
        }
        .overlay(alignment: .top) {
            VStack(spacing: 1) {
                HStack {
                    Text("9:41")
                        .frame(width: 109)
                        .clipped()
                        .font(.body.weight(.semibold))
                        .foregroundColor(.white)
                    Spacer()
                    HStack(spacing: 5) {
                        Image(systemName: "cellularbars")
                            .imageScale(.small)
                            .foregroundColor(.white)
                        Image(systemName: "wifi")
                            .imageScale(.small)
                        Image(systemName: "battery.100")
                            .symbolRenderingMode(.hierarchical)
                            .font(.body.weight(.light))
                    }
                    .frame(width: 109)
                    .clipped()
                    .font(.body.weight(.semibold))
                    .foregroundColor(.white)
                }
                .padding(.horizontal)
                .padding(.top, 5)
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 30)
                .clipped()
                HStack(spacing: 0) {
                    
                }
                .frame(height: 44)
                .clipped()
            }
            .frame(height: 70)
            .clipped()
            .background {
                Group {
                    
                }
            }
            .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
        }
        .overlay(alignment: .bottom) {
            VStack(spacing: 0) {
                Divider()
                HStack(spacing: 10) {
                    ForEach(0..<4) { _ in // Replace with your data model here
                        VStack(spacing: 4) {
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                                .frame(height: 26)
                                .clipped()
                                .foregroundColor(Color(.systemBackground))
                            Text("Listen Now")
                                .font(.caption2)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        .foregroundColor(.secondary)
                        .background {
                            Group {
                                
                            }
                        }
                    }
                }
                .padding(.horizontal, 15)
                .padding(.top, 5)
            }
            .frame(height: 84, alignment: .top)
            .clipped()
            .background(alignment: .top) {
                Group {
                    
                }
            }
            .foregroundColor(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
            .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
        }
        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}

