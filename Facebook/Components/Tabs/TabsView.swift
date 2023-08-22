//
//  TabsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TabsView: View {
    @EnvironmentObject var tabsModel: TabsModel
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            TextButtonView(model: TextButtonModel(
                text: "Posts",
                fontSize: tabsModel.currentTab == 0 ? Font.title2 : Font.title3,
                fontWeight: tabsModel.currentTab == 0 ? .bold : .semibold,
                fontColor: tabsModel.currentTab == 0 ? Color.blue : Color.primary)) {
                    tabsModel.currentTab = 0
            }
            
            TextButtonView(model: TextButtonModel(
                text: "Reels",
                fontSize: tabsModel.currentTab == 1 ? Font.title2 : Font.title3,
                fontWeight: tabsModel.currentTab == 1 ? .bold : .semibold,
                fontColor: tabsModel.currentTab == 1 ? Color.blue : Color.primary)) {
                    tabsModel.currentTab = 1
                    tabsModel.showModal = true
            }
                .fullScreenCover(isPresented: $tabsModel.showModal) {
                    ZStack(alignment: .topTrailing) {
                        ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
                        
                        IconButtonView(model: IconButtonModel(imageName: "ReelsHomeRound")) {
                            tabsModel.showModal = false
                        }
                        .padding(.top, borderPadding * 4)
                        .padding(.trailing, borderPadding)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                    .background(Color.black)
                }
            
            TextButtonView(model: TextButtonModel(
                text: "Videos",
                fontSize: tabsModel.currentTab == 2 ? Font.title2 : Font.title3,
                fontWeight: tabsModel.currentTab == 2 ? .bold : .semibold,
                fontColor: tabsModel.currentTab == 2 ? Color.blue : Color.primary)) {
                tabsModel.currentTab = 2
            }
            
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "SearchRound"))
            IconButtonView(model: IconButtonModel(imageName: "SavedRound"))
        }
    }
}

#Preview("Tabs View") {
    TabsView()
}
