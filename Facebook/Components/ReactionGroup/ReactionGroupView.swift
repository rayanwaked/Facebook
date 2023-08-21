//
//  ReactionGroupView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReactionGroupView: View {    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Laugh", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hug", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hate", label: "000"))
                }
                .padding([.leading, .trailing], borderPadding)
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
             
            HStack {
                ReactionPillView(model: ReactionPillModel(imageName: "CommentsFilled2", label: ""))
                ReactionPillView(model: ReactionPillModel(imageName: "SendFilled2", label: ""))
            }
        }
        .padding(.leading, -borderPadding)
    }
}

#Preview("Reaction Group View") {
    ReactionGroupView()
}
