//
//  ReelsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .overlay(
                    Image("SampleImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                )
                .frame(maxWidth: .infinity)
                .frame(height: 600)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            
            VStack {
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40))
                    VStack(alignment: .leading) {
                        Text("First Last")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        Text("Lorem ipsum dolor set amet")
                            .font(.subheadline)
                            .foregroundStyle(Color.white)
                    }
                    Spacer()
                }
                
                Spacer()
                
                VStack {
                    ReelsReactionGroupView()
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 600)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
    }
}

#Preview("Reels View") {
    ReelsView()
}
