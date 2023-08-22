//
//  PostsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ImagePostView(model: ImagePostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                image: "SampleImage",
                caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                number: 1))
            ImagePostView(model: ImagePostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                image: "SampleImage",
                caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                number: 1))
        }
    }
}

#Preview("Posts View") {
    PostsView()
}
