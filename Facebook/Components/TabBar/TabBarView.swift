//
//  TabBarView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var pageInformation: PageDisplay
    
    var body: some View {
        HStack(spacing: 20) {
            IconButtonView(model: IconButtonModel(imageName: "HomeRound")) {pageInformation.appPage = 0}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "WidgetRound"))
                {pageInformation.appPage = 1}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "ChatRound"))
                {pageInformation.appPage = 2}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "BellRound"))
                {pageInformation.appPage = 3}
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "UserRounded"))
                {pageInformation.appPage = 4}
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding([.leading, .trailing], 35)
        .background(.ultraThinMaterial)
    }
}

#Preview("Tab Bar View") {
    TabBarView()
}
