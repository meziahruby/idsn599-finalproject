//
//  SearchBar.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
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
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
