//
//  WithUsersImage.swift
//  tona
//
//  Created by Meziah Cristobal on 4/22/23.
//
//  Styles the images of the users who are part of that event plan

import SwiftUI

struct WithUsersImage: View {
    var image: Image
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        image
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 30, height: 30)
            .mask { RoundedRectangle(cornerRadius: 104, style: .continuous) }
    }
}

struct WithUsersImage_Previews: PreviewProvider {
    static var previews: some View {
        WithUsersImage(Image("eiffel-tower"))
    }
}
