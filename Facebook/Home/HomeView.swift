//
//  ContentView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @StateObject var tabsModel = TabsModel()
    let borderPadding = CGFloat(18)
    
    var body: some View {
        VStack(spacing: 0) {
            //TODO: Hide on scroll
            Logo()
                .padding(.top, borderPadding/2)
            
            ScrollView(showsIndicators: false) {
                //MARK: Header
                HeaderView()
                .padding([.leading, .trailing], borderPadding)
                .padding(.top, borderPadding)
                
                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Tabs
                StoriesView()

                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Stories
                TabsView()
                    .padding([.leading, .trailing], borderPadding)
                    .padding(.bottom, 10)
                    .environmentObject(tabsModel)
                
                //MARK: Posts
                PostsView()
                .padding(borderPadding)
            }
        }
    }
}

#Preview("Home View") {
    HomeView()
}
