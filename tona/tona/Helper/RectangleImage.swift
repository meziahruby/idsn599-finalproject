//
//  RectangleImage.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//

import SwiftUI

struct RectangleImage: View {
    
    var image: Image
    var aspect: CGFloat = 1.0
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        Rectangle()
            .aspectRatio(aspect, contentMode: .fit)
            .overlay {
                image
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(Image("myImage"))
    }
}
