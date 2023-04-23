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
        Find(imageName: Image("one"), location: "miami"),
        Find(imageName: Image("two"), location: "paris"),
        Find(imageName: Image("three"), location: "New York"),
        Find(imageName: Image("four"), location: "paris"),
        Find(imageName: Image("five"), location: "sydney"),
        Find(imageName: Image("six"), location: "paris"),
        Find(imageName: Image("seven"), location: "miami"),
        Find(imageName: Image("eight"), location: "New York"),
        Find(imageName: Image("nine"), location: "paris"),
        Find(imageName: Image("ten"), location: "dubai"),
        Find(imageName: Image("eleven"), location: "miami"),
        Find(imageName: Image("twelve"), location: "New York"),
        Find(imageName: Image("thirteen"), location: "New York"),
        Find(imageName: Image("fourteen"), location: "miami"),
        Find(imageName: Image("fifteen"), location: "New York"),
        Find(imageName: Image("sixteen"), location: "sydney"),
        Find(imageName: Image("seventeen"), location: "other"),
        Find(imageName: Image("eighteen"), location: "paris"),
        Find(imageName: Image("nineteen"), location: "paris"),
        Find(imageName: Image("twenty"), location: "New York"),
        Find(imageName: Image("twentyone"), location: "miami"),
        Find(imageName: Image("twentytwo"), location: "paris"),
        Find(imageName: Image("twentythree"), location: "paris"),
        Find(imageName: Image("twentyfour"), location: "New York"),
        Find(imageName: Image("twentyfive"), location: "miami"),
        Find(imageName: Image("twentysix"), location: "paris"),
        Find(imageName: Image("twentyseven"), location: "miami"),
        Find(imageName: Image("twentyeight"), location: "other"),
    ]
}

struct Find: Identifiable {
    let id: String = UUID().uuidString
    let imageName: Image
    let location: String
}
