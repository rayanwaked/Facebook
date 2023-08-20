//
//  ContentView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    let borderPadding = CGFloat(18)
    
    var body: some View {
        VStack(spacing: 0) {
            Logo()
                .padding(.top, borderPadding/2)
            
            ScrollView {
                //MARK: Header
                HeaderView()
                .safeAreaPadding([.leading, .trailing], borderPadding)
                .padding(.top, borderPadding)
                
                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Tabs
                StoriesView()
                    .safeAreaPadding(.leading, borderPadding)

                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Stories
                TabsView()
                    .safeAreaPadding([.leading, .trailing], borderPadding)
                    .padding(.bottom, 10)
                
                //MARK: Posts
                PostsView()
                .safeAreaPadding(borderPadding)
            }
            .scrollIndicators(.hidden)
            
            //MARK: Tab Bar
            TabBarView()
        }
    }
}

#Preview("Home View") {
    HomeView()
}
