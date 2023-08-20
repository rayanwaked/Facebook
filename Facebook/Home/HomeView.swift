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
        NavigationView {
            ScrollView(showsIndicators: false) {
                Logo()
                    .padding(.top, 20)
                    .padding(.bottom, -2)
                
                //MARK: Header
                HeaderView()
                    .padding([.leading, .trailing], borderPadding)
                
                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Tabs
                StoriesView()
                
                Divider()
                    .padding([.top, .bottom], 10)
                
                //MARK: Stories
                TabsView()
                    .padding([.leading, .trailing], borderPadding)
                    .environmentObject(tabsModel)
                
                //MARK: Posts
                switch tabsModel.currentTab {
                case 0: PostsView()
                        .padding(borderPadding)
                case 1: Text("Reels")
                        .padding(borderPadding)
                case 2: Text("Watch")
                        .padding(borderPadding)
                default: PostsView()
                        .padding(borderPadding)
                }
            }
        }
    }
}

#Preview("Home View") {
    HomeView()
}
