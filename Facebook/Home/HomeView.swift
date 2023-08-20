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
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                
                //MARK: Stories
                TabsView()
                    .padding([.leading, .trailing], borderPadding)
                    .padding(.bottom, -5)
                    .environmentObject(tabsModel)
                
                //MARK: Content
                VStack {
                    switch tabsModel.currentTab {
                    case 0: PostsView()
                    case 1: Text("Reels")
                    case 2: Text("Watch")
                    default: PostsView()
                    }
                }
                .padding(borderPadding)
                .padding(.bottom, borderPadding)
            }
        }
    }
}

#Preview("Home View") {
    HomeView()
}
