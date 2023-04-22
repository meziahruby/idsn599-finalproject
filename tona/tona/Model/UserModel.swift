//
//  UserModel.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import Foundation
import SwiftUI

struct UserModel: Identifiable {
    var id: UUID = UUID()
    var user: String
    var profilePic: Image { Image(user) }
}
