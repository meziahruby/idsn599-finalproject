//
//  FindModel.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/22/23.
//


import Foundation
import SwiftUI

struct FindImage {
    
    let findData: [Find] = [
        Find(imageName: Image("miami1"), location: "miami"),
        Find(imageName: Image("paris1"), location: "paris"),
        Find(imageName: Image("new york1"), location: "new york"),
        Find(imageName: Image("paris2"), location: "paris"),
        Find(imageName: Image("sydney1"), location: "sydney"),
        Find(imageName: Image("paris3"), location: "paris"),
        Find(imageName: Image("miami2"), location: "miami"),
        Find(imageName: Image("new york2"), location: "new york"),
        Find(imageName: Image("paris4"), location: "paris"),
        Find(imageName: Image("dubai1"), location: "dubai"),
        Find(imageName: Image("miami3"), location: "miami"),
        Find(imageName: Image("new york7"), location: "new york"),
        Find(imageName: Image("miami4"), location: "miami"),
        Find(imageName: Image("sydney2"), location: "sydney"),
        Find(imageName: Image("paris5"), location: "paris"),
        Find(imageName: Image("paris9"), location: "paris"),
        Find(imageName: Image("new york5"), location: "new york"),
        Find(imageName: Image("miami5"), location: "miami"),
        Find(imageName: Image("paris6"), location: "paris"),
        Find(imageName: Image("paris7"), location: "paris"),
        Find(imageName: Image("miami6"), location: "miami"),
        Find(imageName: Image("miami7"), location: "miami")
      ]
}

struct Find: Identifiable {
    let id: String = UUID().uuidString
    let imageName: Image
    let location: String
}
