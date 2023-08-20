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
                ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50))
                VStack(alignment: .leading) {
                    Text("First Last")
                        .fontWeight(.bold)
                    Text("Month 00 at 00:00")
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                IconButtonView(model: IconButtonModel(imageName: "MenuRound"))
                    .opacity(0.5)
            }

            
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
                .padding(.top, 5)
            
            //MARK: Post Interactions
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000"))
                        ReactionPillView(model: ReactionPillModel(imageName: "Laugh", label: "000"))
                        ReactionPillView(model: ReactionPillModel(imageName: "Hate", label: "000"))
                        
                        ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000"))
                        
                        ReactionPillView(model: ReactionPillModel(imageName: "SmileAddRound", label: "Add"))
                    }
                    .padding([.leading, .trailing], borderPadding)
                }
                .clipShape(RoundedRectangle(cornerRadius: 25))
                 
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
                    ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
                        .padding(.leading, -15)
                    ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
                        .padding(.leading, -15)
                }
            }
            .padding(.leading, -borderPadding)
            
            HStack {
                Spacer()
                
                TextButtonView(model: TextButtonModel(text: "00 Comments", fontSize: 16, fontWeight: .regular, fontColor: Color.gray))
                {print("Open Comments")}
                TextButtonView(model: TextButtonModel(text: "00 Shares", fontSize: 16, fontWeight: .regular, fontColor: Color.gray))
                {print("Open Sharesheet")}
            }
        }
    }
}

#Preview("Posts View") {
    PostsView()
}
