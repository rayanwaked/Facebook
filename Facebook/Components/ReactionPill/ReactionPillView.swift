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
                    .frame(width: 20, height: 20)
                Text(model.label)
                    .font(.system(size: 14))
                    .foregroundStyle(Color.primary)
            }
            .padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 8)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview("Reaction Pill") {
    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "123"))
}
