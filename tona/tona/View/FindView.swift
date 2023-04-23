//
//  NavigationwithScroll.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI


struct FindView: View {
    @EnvironmentObject var viewModel: FindViewModel
    
    
    private let columns = [
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
    ]
    
    var body: some View {
        NavigationView{
            VStack{
                SearchBar(text: $viewModel.searchText)
                    .padding()
                ScrollView{
                    LazyVGrid(columns: columns, content: {
                        ForEach(viewModel.filteredImages)
                        { post in
                            RectangleImage(post.imageName)
                        }
                    }
                    )}
                .padding()
            }
            .background(Color(.sRGB, red: 4/255, green: 27/255, blue: 21/255))
        }
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
            .environmentObject(FindViewModel())
    }
}

