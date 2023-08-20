//
//  SearchBar.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.thickMaterial)
            
            Text("What's on your mind?")
                .foregroundStyle(.gray.opacity(0.7))
                .font(Font.system(size: 16).weight(.medium))
                .padding()
            
            //TODO: On tap, provide menu to search, create text post, create reel, create video, etc...
        }
    }
}

#Preview("Search Bar View") {
    SearchBarView()
}
