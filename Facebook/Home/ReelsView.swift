//
//  ReelsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Genre 1")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.blue)
                .padding(.leading, borderPadding)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                }
                .padding(.leading, borderPadding)
            }
            .padding(.bottom)
            
            Text("Genre 2")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.blue)
                .padding(.leading, borderPadding)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                    Image("SampleImage")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 100, height: 180)
                }
                .padding(.leading, borderPadding)
            }
            .padding(.bottom)
        }
    }
}

#Preview("Reels View") {
    ReelsView()
}
