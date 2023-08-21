//
//  ReelsReactionGroupView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReelsReactionGroupView: View {
    var borderPadding = CGFloat(18)
    
    var body: some View {
        HStack(alignment: .bottom) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Laugh", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hate", label: "000"))
                    
                    ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000"))
                    
                    ReactionPillView(model: ReactionPillModel(imageName: "SmileAddRound", label: "Add"))
                }
                .padding([.leading, .trailing], borderPadding)
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            //MARK: Share & Profile Reaction Images
            VStack {
                ReactionPillView(model: ReactionPillModel(imageName: "CommentsFilled", label: ""))
                ReactionPillView(model: ReactionPillModel(imageName: "SaveFilled", label: ""))
                ReactionPillView(model: ReactionPillModel(imageName: "SendFilled", label: ""))
            }
        }
        .padding(.leading, -borderPadding)
    }
}

#Preview("Reaction Group View") {
    ReelsReactionGroupView()
}
