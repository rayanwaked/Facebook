//
//  ReactionPillView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct ReactionPillView: View {
    var model: ReactionPillModel
    var reactionPillTappedAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            reactionPillTappedAction?()
        }) {
            HStack(alignment: .center) {
                Image(model.imageName)
                    .resizable()
                    .frame(width: model.size, height: model.size)
                if !model.label.isEmpty {
                    Text(model.label)
                        .font(.callout)
                        .foregroundStyle(Color.primary)
                }
            }
            .padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 6)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview("Reaction Pill View") {
    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "123", size: 20))
}
