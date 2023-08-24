//
//  ReelContent.swift
//  Facebook
//
//  Created by Rayan Waked on 8/23/23.
//

import SwiftUI

struct ReelContent: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("SampleReel")
                .resizable()

            HStack(alignment: .bottom) {
                ReelHeaderView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleReel", caption: "Lorem Ipsum Dolor Set Amet"))
                    .padding(.leading, borderPadding)
                Spacer()
                ReelsReactionGroupView()
            }
            .padding([.leading, .trailing], borderPadding)
            .padding(.bottom, borderPadding * 3)
        }
    }
}

#Preview {
    ReelContent()
}
