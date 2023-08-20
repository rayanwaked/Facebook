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
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                VStack {
                    Circle()
                        .frame(height: 60)
                        .foregroundStyle(.ultraThickMaterial)
                    Text("First")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
            }
            .padding(.trailing, 18)
        }

    }
}

#Preview("Stories View") {
    StoriesView()
}
