//
//  ReelsModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import SwiftUI

struct ReelPostView: View {
    var model: ReelPostModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(model.reel)
                .resizable()
                .frame(height: UIScreen.main.bounds.height * 0.9)
                .modifier(FullScreenModifier())
            
            VStack {
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
                    VStack(alignment: .leading) {
                        Text(model.name)
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        Text(model.caption)
                            .font(.subheadline)
                            .foregroundStyle(Color.white)
                    }
                    Spacer()
                }
                
                Spacer()
                
                ReactionGroupView()
                .frame(height: 20)
                .padding(.bottom)
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.9)
        .padding([.leading, .trailing], -borderPadding)
        .padding(.bottom, -8)
    }
}

#Preview("Reels Post Preview") {
    ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
}
