//
//  StoriesView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                VStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 60, height: 60))
                    Text("You")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(Font.system(size: 14).weight(.medium))
                }
            }
            .padding([.leading, .trailing], 18)
        }

    }
}

#Preview("Stories View") {
    StoriesView()
}
