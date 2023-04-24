//
//  Aspirational.swift
//  tona
//
//  Created by Janae Strange on 4/23/23.
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
                
                struct Aspirational: View {
                    var body: some View {
                        Text("Can We Go?")
                            .font(.largeTitle.weight(.medium))
                            .foregroundColor(Color(.sRGB, red: 235/255, green: 249/255, blue: 249/255))
                        AspirationalView(image: "sedona", title: "Sedona")
                        AspirationalView(image: "finland", title: "Finland")
                        AspirationalView(image: "   dubai", title: "Dubai")
                    }
                    
                        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
                }
                
                
                struct Aspirational_Previews: PreviewProvider {
                    static var previews: some View {
                        Aspirational()
                    }
                }
            }
        }
    }
}
