//
//  TabBarView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        Divider()
        HStack(spacing: 20) {
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "HomeRound")) {
                print("0")
            }
            Spacer()
            
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "WidgetRound"))
            {
                print("1")
            }
            Spacer()
            
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "ChatRound"))
            {
                print("2")
            }
            Spacer()
            
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "BellRound"))
            {
                print("3")
            }
            Spacer()
            
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "UserRounded"))
            {
                print("4")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .safeAreaPadding([.leading, .trailing], 35)
        .background(.ultraThinMaterial)
    }
}

#Preview("Tab Bar View") {
    TabBarView()
}