//
//  ReelHeaderView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/23/23.
//

import SwiftUI

struct ReelHeaderView: View {
    var model: ReelPostModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 32, height: 32, story: false))
                    Text(model.name)
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
                Text(model.caption)
                    .font(.subheadline)
                    .foregroundStyle(Color.white)
            }
        }
    }
}

#Preview("Reel Header View") {
    ReelHeaderView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleReel", caption: "Lorem Ipsum Dolor Set Amet"))
        .preferredColorScheme(.dark)
}
