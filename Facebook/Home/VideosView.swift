//
//  ViewsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct VideosView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VideoPostView(model: VideoPostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                video: "SampleImage",
                caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."))
            VideoPostView(model: VideoPostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                video: "SampleImage",
                caption: ""))
        }
    }
}

#Preview("Videos View"){
    VideosView()
}
