//
//  TextFieldStyle.swift
//  tona
//
//  Created by Njideka Akudinobi on 4/23/23.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle:
    TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .foregroundColor(Color(red: 0.016, green: 0.106, blue: 0.082))
            .padding(10)
            .padding(.horizontal, 15)
            .background(Color(red: 0.922, green: 0.976, blue: 0.976))
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
