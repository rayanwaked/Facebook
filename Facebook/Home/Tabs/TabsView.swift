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
                fontColor: tabsModel.currentTab == 0 ? Color.blue : Color.black)) {
                tabsModel.currentTab = 0
            }
            
            TextButtonView(model: TextButtonModel(
                text: "Reels",
                fontSize: tabsModel.currentTab == 1 ? Font.title2 : Font.title3,
                fontWeight: tabsModel.currentTab == 1 ? .bold : .semibold,
                fontColor: tabsModel.currentTab == 1 ? Color.blue : Color.black)) {
                tabsModel.currentTab = 1
            }
            
            TextButtonView(model: TextButtonModel(
                text: "Videos",
                fontSize: tabsModel.currentTab == 2 ? Font.title2 : Font.title3,
                fontWeight: tabsModel.currentTab == 2 ? .bold : .semibold,
                fontColor: tabsModel.currentTab == 2 ? Color.blue : Color.black)) {
                tabsModel.currentTab = 2
            }
            
            Spacer()
            
            //TODO: Start a voice chat group
            IconButtonView(model: IconButtonModel(imageName: "MicrophoneRound"))
            //TODO: Start a video chat group
            IconButtonView(model: IconButtonModel(imageName: "VideoRound"))
        }
    }
}

#Preview("Tabs View") {
    TabsView()
}
