//
//  FindModel.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//


import Foundation
import SwiftUI

struct FindImage {
    
    var findData: [Find] = [
        Find(imageName: Image("one")),
        Find(imageName: Image("two")),
        Find(imageName: Image("three")),
        Find(imageName: Image("four")),
        Find(imageName: Image("five")),
        Find(imageName: Image("six")),
        Find(imageName: Image("seven")),
        Find(imageName: Image("eight")),
        Find(imageName: Image("nine")),
        Find(imageName: Image("ten")),
        Find(imageName: Image("eleven")),
        Find(imageName: Image("twelve")),
        Find(imageName: Image("thirteen")),
        Find(imageName: Image("fourteen")),
        Find(imageName: Image("fifteen")),
        Find(imageName: Image("sixteen")),
        Find(imageName: Image("seventeen")),
        Find(imageName: Image("eighteen")),
        Find(imageName: Image("nineteen")),
        Find(imageName: Image("twenty")),
        Find(imageName: Image("twentyone")),
        Find(imageName: Image("twentytwo")),
        Find(imageName: Image("twentythree")),
        Find(imageName: Image("twentyfour")),
        Find(imageName: Image("twentyfive")),
        Find(imageName: Image("twentysix")),
        Find(imageName: Image("twentyseven")),
        Find(imageName: Image("twentyeight")),
    ]
}

struct Find: Identifiable {
    let id: String = UUID().uuidString
    let imageName: Image
}
