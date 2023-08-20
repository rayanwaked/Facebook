//
//  IconButtonView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct IconButtonView: View {
    var model: IconButtonModel
    var iconButtonTappedAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            iconButtonTappedAction?()
        }) {
            Image(model.imageName)
                .font(.system(size: 20))
        }
    }
}

#Preview("Icon Button View") {
    IconButtonView(model: IconButtonModel(imageName: "ChatRound")) {
        print("Test")
    }
}

