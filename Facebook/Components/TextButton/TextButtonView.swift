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
                .font(model.fontSize)
                .fontWeight(model.fontWeight)
                .foregroundStyle(model.fontColor)
                .lineLimit(1)
        }
    }
}

#Preview("Icon Button View") {
    TextButtonView(model: TextButtonModel(text: "ChatRound", fontSize: .title, fontWeight: .bold, fontColor: Color.black)) {
        print("Test")
    }
}
