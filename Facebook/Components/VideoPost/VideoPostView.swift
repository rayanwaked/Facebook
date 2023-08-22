//
//  VideoPostModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import SwiftUI

struct VideoPostView: View {
    var model: VideoPostModel
    
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
            Image(model.video)
                .resizable()
                .frame(height: 250)
                .padding([.top, .bottom], 5)
                .padding([.leading, .trailing], -borderPadding)
            
            Text(model.caption)
                .lineSpacing(2)
                .font(.body)
            
            //MARK: Post Interactions
            ReactionGroupView()
            
            Divider()
                .padding(borderPadding/1.5)
        }
    }
}

#Preview("Video Post View") {
    VideoPostView(model: VideoPostModel(name: "First Last", date: "Month 00 at 00:00", video: "SampleImage", caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."))
}
