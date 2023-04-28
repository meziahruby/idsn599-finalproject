//
//  Aspirational.swift
//  tona
//
//  Created by Janae Strange on 4/23/23.
//
//Notes: lighter text cannot be seen here but is on app page.
//adding friend profile pics to header for code turn-in

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
                .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
            
            HStack(spacing: 16) {
                Image("Profile1")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.leading, 15.0)
                    .frame(width: 130, height: 120, alignment: .center)
                    .clipped()
                VStack(alignment: .leading, spacing: 8) {
                    Text("Teresa")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    Text("reminder: dinner at 5:30pm CET")
                        .foregroundColor(.white)
                        .font(.body)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}
            

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
