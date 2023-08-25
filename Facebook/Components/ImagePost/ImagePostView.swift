//
//  ImagePost.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import SwiftUI

struct ImagePostView: View {
    var model: ImagePostModel
    
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: Post Information
            HStack {
                ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
                VStack(alignment: .leading) {
                    Text(model.name)
                        .font(.body)
                        .fontWeight(.bold)
                    Text(model.date)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                IconButtonView(model: IconButtonModel(imageName: "MenuRound"))
                    .opacity(0.5)
            }

            
            //MARK: Post Content
            Text(model.caption)
                .lineSpacing(1)
                .font(.body)
            
            Image(model.image)
                .resizable()
                .frame(height: 400)
                .padding([.leading, .trailing], -borderPadding)
            
            //MARK: Post Interactions
            ReactionGroupView()
                .padding(.bottom, borderPadding * 1.1)
        }
    }
}

#Preview {
    ImagePostView(model: ImagePostModel(
        name: "First Last",
        date: "Month 00 at 00:00",
        image: "SampleImage",
        caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        number: 1))
}
