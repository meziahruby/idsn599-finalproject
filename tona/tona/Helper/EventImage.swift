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
            .frame(width: 60)
            .mask {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
            }
            .padding(.bottom)
    }
}

struct EventImage_Previews: PreviewProvider {
    static var previews: some View {
       EventImage(Image("eiffel-tower"))
    }
}
