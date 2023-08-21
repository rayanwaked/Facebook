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
                ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
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
            
            Image("SampleImage")
                .resizable()
                .frame(height: 400)
                .padding([.leading, .trailing], -borderPadding)
            
            //MARK: Post Interactions
            ReactionGroupView()
        }
    }
}

#Preview("Posts View") {
    PostsView()
}
