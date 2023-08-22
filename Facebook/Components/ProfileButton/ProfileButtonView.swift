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
            ZStack {
                Circle()
                    .stroke(model.story == true ? Color.blue : Color.clear, lineWidth: 7)
                    .asyncImageModifier()
                Circle()
                    .stroke(model.story == true ? Color("Background") : Color.clear, lineWidth: 2)
            }
        }
        .accentColor(.gray)
        .frame(width: model.width, height: model.height+7)
    }
}

#Preview("Profile Button View") {
    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
}
