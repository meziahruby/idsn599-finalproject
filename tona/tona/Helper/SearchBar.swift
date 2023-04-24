//
//  SearchBar.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//
/*
 This is the search bar helper view for the discovery page
 */

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Where is your next adventure?", text: $text)
                .textFieldStyle(CustomTextFieldStyle())
                         
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

