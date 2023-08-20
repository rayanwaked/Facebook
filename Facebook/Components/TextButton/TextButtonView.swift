//
//  TextButtonView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TextButtonView: View {
    var model: TextButtonModel
    var iconButtonTappedAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            iconButtonTappedAction?()
        }) {
            Text(model.text)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundStyle(Color.black)
        }
    }
}

#Preview("Icon Button View") {
    TextButtonView(model: TextButtonModel(text: "ChatRound")) {
        print("Test")
    }
}
