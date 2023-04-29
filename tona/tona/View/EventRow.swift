//
//  Event.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

struct EventRow: View {
    var event: EventModel
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(spacing: 0) {
                Image(systemName: "circle.fill")
                    .imageScale(.medium)
                    .font(.footnote)
                    .foregroundColor(tonaGray)
                Rectangle()
                    .frame(width: 1)
                    .foregroundColor(tonaGray)
            }
            
            EventImage(event.image)
                .padding([.leading, .trailing], 5)
                
            VStack(alignment: .leading, spacing: 2) {
                Text(event.date
                        .formatted(date: .omitted, time: .shortened)
                    )
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text(event.name)
                    .font(.callout.weight(.medium))
                    .foregroundColor(.white)
                HStack {
                    ForEach(event.withUsers) { user in
                        WithUsersImage(user.profilePic)
                            .padding(.top, 5)
                    }
                }
                .padding(.bottom, 30) // Adds some space between the `withUsers` and the next event, elongates the event image a little
            }
            Spacer()
        }
        .padding(.horizontal, 30)
        .background(tonaTeal)
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        let eventPreviewObject = EventModel(name: "Eiffel Tower tour", date: Date(), image: Image("eiffel-tower"), withUsers: [UserModel(user: "howl"), UserModel(user: "sophie")])
        EventRow(event: eventPreviewObject)
    }
}
