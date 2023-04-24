//
//  FindViewModel.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//
/*
 View model for the discovery page
 */


import SwiftUI

class FindViewModel: ObservableObject {
    
    @Published var findPic: FindImage = FindImage()
    @Published var searchText: String = ""
 
    var findAll: [Find] {
        findPic.findData
    }
    
    var filteredImages: [Find] {
        if searchText.isEmpty {
            return findAll
        } else {
            return findAll.filter { $0.location.localizedCaseInsensitiveContains(searchText)}
        }
    }
    
}
