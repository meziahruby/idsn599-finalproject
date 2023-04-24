//
//  Event.swift
//  tona
//
//  Created by Meziah Cristobal on 4/17/23.
//

import SwiftUI

struct Event: View {
    @EnvironmentObject var viewModel: ItineraryViewModel
    var event: EventModel
    
    var pastEventColor = Color(.lightGray)
    var currentEventColor = Color(.sRGB, red: 235/255, green: 155/255, blue: 83/255)
    var upcomingEventColor = Color(.sRGB, red: 235/255, green: 155/255, blue: 83/255)
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(spacing: 0) {
                Image(systemName: "circle.fill")
                    .imageScale(.medium)
                    .font(.footnote)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 1)
                    .foregroundColor(currentEventColor)
                    
            }
            .foregroundColor(Color(.tertiaryLabel))
            
            EventImage(event.image)
                .padding([.leading, .trailing], 5)
                
            VStack(alignment: .leading, spacing: 2) {
                Text(event.date
                        .formatted(date: .omitted, time: .shortened)
                    )
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text(event.name)
                    .font(.headline.weight(.medium))
                    .foregroundColor(.white)
                HStack {
                    ForEach(event.withUsers) { user in
                        WithUsersImage(user.profilePic)
                            .padding(.top, 5)
                    }
                }
                .padding(.bottom, 20)
            }
            Spacer()
        }
        .swipeActions(edge: .leading) {
          Button {
            print("Bookmark")
          } label: {
            Label("Bookmark", systemImage: "bookmark")
          }.tint(.indigo)
        }
        .padding(.horizontal) // only pad to the side so items are on top of each other
        .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        let eventPreviewObject = EventModel(name: "Eiffel Tower tour", date: Date(), image: Image("eiffel-tower"), withUsers: [UserModel(user: "howl"), UserModel(user: "sophie")])
        Event(event: eventPreviewObject)
    }
}
