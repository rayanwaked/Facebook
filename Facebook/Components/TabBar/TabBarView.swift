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
            IconButtonView(model: IconButtonModel(imageName: "HomeRound")) {tabBarViewModel.appPage = 0}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "WidgetRound"))
                {tabBarViewModel.appPage = 1}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "ChatRound"))
                {tabBarViewModel.appPage = 2}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "BellRound"))
                {tabBarViewModel.appPage = 3}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "UserRounded"))
                {tabBarViewModel.appPage = 4}
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding([.leading, .trailing], 35)
        .background(.ultraThinMaterial)
    }
}

#Preview("Tab Bar View") {
    TabBarView()
}
