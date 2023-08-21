//
//  ProfilePicture.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct ProfileButtonView: View {
    var model: ProfileButtonModel
    var profileButtonTappedAction: (() -> Void)?

    var body: some View {
        Button(action: {
            profileButtonTappedAction?()
        }) {
            Circle()
                .stroke(model.story == true ? Color.blue : Color.clear, lineWidth: 4)
                .asyncImageModifier()
        }
        .accentColor(.gray)
        .frame(width: model.width, height: model.height+4)
    }
}

#Preview("Profile Button View") {
    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
}
