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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
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
            .padding(borderPadding)
            .padding([.top, .bottom], borderPadding * 2.5)
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview("Reels Post Preview") {
    ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
}
