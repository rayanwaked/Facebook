//
//  ReelsReactionGroupView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/22/23.
//

import SwiftUI

struct ReelsReactionGroupView: View {
    @EnvironmentObject var tabsModel: TabsModel
    
    var body: some View {
        VStack {
            ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "", size: 30))
            ReactionPillView(model: ReactionPillModel(imageName: "CommentsFilled2", label: "", size: 30))
            ReactionPillView(model: ReactionPillModel(imageName: "SaveFilled2", label: "", size: 30))
            ReactionPillView(model: ReactionPillModel(imageName: "SendFilled2", label: "", size: 30))
            ReactionPillView(model: ReactionPillModel(imageName: "ReelsHomeFilled", label: "", size: 30)) {
                tabsModel.showModal = false
            }
        }
    }
}

#Preview("Reaction Group View") {
    ReelsReactionGroupView()
}
