//
//  ReactionPillView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct ReactionPillModel {
    var imageName: String
    var label: String
}

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
                    .frame(width: 24, height: 24)
                Text(model.label)
                    .foregroundStyle(Color.black)
                    .padding([.leading, .trailing], 2)
            }
            .padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 8)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "123"))
}