//
//  FindViewModel.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//


import SwiftUI

class FindViewModel: ObservableObject {

    @Published private var findPic: FindImage = FindImage()

    var find: [Find] {
        findPic.findData
    }
    

        
}
