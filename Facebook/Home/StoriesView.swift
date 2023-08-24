//
//  StoriesView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct StoriesView: View {
    var model: ProfileButtonModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) {
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        ProfileButtonView(model: ProfileButtonModel(width: 55, height: 55, story: false))
                            AddIndicatorView()
                    }
                    .padding(.bottom, -4)
                    Text("You")
                        .foregroundStyle(.gray)
                        .font(Font.subheadline)
                }
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        ProfileButtonView(model: ProfileButtonModel(width: 55, height: 55, story: true))
                    }
                    .padding(.bottom, -4)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.subheadline)
                }
            }
            .padding([.leading, .trailing], borderPadding)
        }

    }
}

#Preview("Stories View") {
    StoriesView(model: ProfileButtonModel(width: 40, height: 40, story: false))
}
