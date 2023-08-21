//
//  ReelsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
        VStack{
            ReelPostView(model: ReelPostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                reel: "SampleImage",
                caption: "Lorem ipsum dolor set amet"))
            ReelPostView(model: ReelPostModel(
                name: "First Last",
                date: "Month 00 at 00:00",
                reel: "SampleImage",
                caption: "Lorem ipsum dolor set amet"))
        }
    }
}

#Preview("Reels View") {
    ReelsView()
}
