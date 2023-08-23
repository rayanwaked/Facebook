//
//  ReelsReactionGroupView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/22/23.
//

import SwiftUI

struct ReelsReactionGroupView: View {
    var body: some View {
        HStack {
            HStack {
                ReactionPillView(model: ReactionPillModel(imageName: "CommentsFilled2", label: "", size: 26))
                ReactionPillView(model: ReactionPillModel(imageName: "SendFilled2", label: "", size: 26))
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000", size: 26))
                    ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000", size: 26))
                    ReactionPillView(model: ReactionPillModel(imageName: "Laugh", label: "000", size: 26))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hug", label: "000", size: 26))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hate", label: "000", size: 26))
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview("Reaction Group View") {
    ReelsReactionGroupView()
}
