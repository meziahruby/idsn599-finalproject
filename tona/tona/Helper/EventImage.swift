//
//  ImageView.swift
//  tona
//
//  Created by Meziah Cristobal on 4/22/23.
//
//  Styles the event images in the Itinerary timeline

import SwiftUI

struct EventImage: View {
    
    var image: Image
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        image
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60)
            .mask {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
            }
            .padding(.bottom, 15) // Adds space between events
    }
}

struct EventImage_Previews: PreviewProvider {
    static var previews: some View {
       EventImage(Image("eiffel-tower"))
    }
}
