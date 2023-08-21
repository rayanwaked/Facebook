//
//  ContentView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var tabsModel = TabsModel()
    @State private var isRefreshing = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Logo()
                .padding(.top, 20)
                .padding(.bottom, -2)
            
            //MARK: Header
            HeaderView()
                .padding([.leading, .trailing], borderPadding)
                .padding(.top, 5)
            
            Divider()
                .padding(.bottom, 2)
            
            //MARK: Tabs
            StoriesView(model: ProfileButtonModel(width: 40, height: 40, story: false))
            
            Divider()
                .padding(.top, -2)
                .padding(.bottom, 2)
            
            //MARK: Stories
            TabsView()
                .padding([.leading, .trailing], borderPadding)
                .padding(.bottom, -10)
                .environmentObject(tabsModel)
            
            //MARK: Content
            VStack {
                switch tabsModel.currentTab {
                case 0: PostsView()
                case 1: ReelsView()
                case 2: VideosView()
                default: PostsView()
                }
            }
            .padding(borderPadding)
            .padding(.bottom, borderPadding)
        }
        .contentShape(Rectangle())
        .refreshable {
            await refreshData()
            print("refreshed")
        }
    }
    
    func refreshData() async {
        isRefreshing = true
        await Task.sleep(2 * 1_000_000_000) // Simulate a 2-second refresh
        isRefreshing = false
    }
}

#Preview("Home View") {
    HomeView()
}
