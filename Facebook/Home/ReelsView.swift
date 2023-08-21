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
            Image("SampleImage")
                .resizable()
                .frame(height: 700)
                .padding(.top, 5)
            
            VStack {
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
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
        .frame(height: 700)
        .padding([.leading, .trailing], -borderPadding)
    }
}

#Preview("Reels View") {
    ReelsView()
}
