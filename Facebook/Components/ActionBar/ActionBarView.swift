//
//  SearchBar.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct ActionBarView: View {
    var actionBarTappedAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            actionBarTappedAction?()
        }) {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundStyle(.thickMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text("What's on your mind?")
                    .foregroundStyle(.gray.opacity(0.8))
                    .font(Font.system(size: 16).weight(.medium))
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview("Search Bar View") {
    ActionBarView()
}
