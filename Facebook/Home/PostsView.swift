//
//  PostsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct PostsView: View {
    let borderPadding = CGFloat(18)
    
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: Post Information
            HStack {
                ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40))
                VStack(alignment: .leading) {
                    Text("First Last")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("Month 00 at 00:00")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                IconButtonView(model: IconButtonModel(imageName: "MenuRound"))
                    .opacity(0.5)
            }

            
            //MARK: Post Content
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .lineSpacing(2)
                .font(.body)
            
            Rectangle()
                .overlay(
                    Image("SampleImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                )
                .frame(maxWidth: .infinity)
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                .padding(.top, 5)
            
            //MARK: Post Interactions
            ReactionGroupView()
        }
    }
}

#Preview("Posts View") {
    PostsView()
}
