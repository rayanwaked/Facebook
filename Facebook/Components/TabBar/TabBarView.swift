//
//  TabBarView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel
    
    var body: some View {
        HStack(spacing: 20) {
            IconButtonView(model: tabBarViewModel.appPage == 0 ? IconButtonModel(imageName: "HomeFilled") : IconButtonModel(imageName: "HomeRound")) {tabBarViewModel.appPage = 0}
            Spacer()
            
            IconButtonView(model: tabBarViewModel.appPage == 1 ? IconButtonModel(imageName: "WidgetFilled") : IconButtonModel(imageName: "WidgetRound"))
                {tabBarViewModel.appPage = 1}
            Spacer()
            
            IconButtonView(model: tabBarViewModel.appPage == 2 ? IconButtonModel(imageName: "ChatFilled") : IconButtonModel(imageName: "ChatRound"))
                {tabBarViewModel.appPage = 2}
            Spacer()
            
            IconButtonView(model: tabBarViewModel.appPage == 3 ? IconButtonModel(imageName: "BellFilled") : IconButtonModel(imageName: "BellRound"))
                {tabBarViewModel.appPage = 3}
            Spacer()
            
            IconButtonView(model: tabBarViewModel.appPage == 4 ? IconButtonModel(imageName: "UserFilled") : IconButtonModel(imageName: "UserRound"))
                {tabBarViewModel.appPage = 4}
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding([.leading, .trailing], 35)
        .background(Color("Background"))
    }
}

#Preview("Tab Bar View") {
    TabBarView()
}
