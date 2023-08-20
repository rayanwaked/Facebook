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
            HStack {
                Text("What's on your mind?")
                    .foregroundStyle(.gray.opacity(0.8))
                    .font(Font.system(size: 15).weight(.medium))
                    .padding()
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(.thickMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview("Search Bar View") {
    ActionBarView()
}
