//
//  RectangleImage.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//

import SwiftUI

struct RectangleImage: View {
    
    @EnvironmentObject var viewModel: FindViewModel
    @State private var isExpanded = false
    
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
                    .overlay(
                       Button(action: {
                           // Perform action to add image to another view
                           print("Add image to another view")
                       }, label: {
                           Image(systemName: "plus.circle.fill")
                               .font(.system(size: 16))
                               .foregroundColor(.white)
                               .padding(5)
                               .background(Color(red: 0.922, green: 0.608, blue: 0.329))
                               .clipShape(Circle())
                               .opacity(0.8)
                       })
                       .padding(10)
                       .opacity(0.8),
                       alignment: .bottomTrailing
                   )
                    .clipped()
            }
        }

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(Image("myImage"))
    }
}
