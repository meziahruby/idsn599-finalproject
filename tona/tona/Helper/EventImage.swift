//
//  ImageView.swift
//  tona
//
//  Created by Meziah Cristobal on 4/22/23.
//

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
            .frame(width: 60, height: 80)
            .clipped()
            .mask {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
            }
            .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.25), radius: 8, x: 0, y: 4)
    }
}

struct EventImage_Previews: PreviewProvider {
    static var previews: some View {
       EventImage(Image("eiffel-tower"))
    }
}
