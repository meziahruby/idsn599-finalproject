//
//  FindViewModel.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//


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

/*   var filteredImages: [ImageModel] {
 if searchText.isEmpty {
 return images
 } else {
 return images.filter { $0.imageName.lowercased().contains(searchText.lowercased()) }
 }
 }
 }
 */
