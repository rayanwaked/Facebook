//
//  PostsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: Post Information
            
            HStack {
                Circle()
                    .frame(height: 50)
                    .foregroundStyle(.ultraThickMaterial)
                VStack(alignment: .leading) {
                    Text("First Last")
                        .fontWeight(.bold)
                    Text("Month 00 at 00:00")
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                IconButtonView(model: IconButtonModel(imageName: "MenuRound"))
            }
            .padding(.bottom, 10)
            
            //MARK: Post Content
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .lineSpacing(3)
            
            Rectangle()
                .overlay(
                    Image("SampleImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                )
                .frame(maxWidth: .infinity)
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                .padding(.top, 10)
            
            //MARK: Post Interactions
            HStack {
                ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000"))
                
                ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000"))
                
                ReactionPillView(model: ReactionPillModel(imageName: "SmileAddRound", label: "Add"))
            }
        }
    }
}

#Preview("Posts View") {
    PostsView()
}
