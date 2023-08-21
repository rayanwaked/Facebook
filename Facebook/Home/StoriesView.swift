//
//  StoriesView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        ProfileButtonView(model: ProfileButtonModel(width: 55, height: 55))
                        AddIndicatorView()
                    }
                    Text("You")
                        .foregroundStyle(.gray)
                        .font(Font.subheadline)
                }
            }
            .padding([.leading, .trailing], 18)
        }

    }
}

#Preview("Stories View") {
    StoriesView()
}
