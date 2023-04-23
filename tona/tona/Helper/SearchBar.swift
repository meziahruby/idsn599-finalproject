//
//  SearchBar.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Where is your next adventure?", text: $text)
                .foregroundColor(.white)
                .padding(10)
                .cornerRadius(8)
                .padding(.horizontal, 15)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 0.922, green: 0.976, blue: 0.976)))
                         
            
            Button(action: {
                text = ""
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.white)
                    .padding(.trailing, 10)
            })
        }
    }
}

