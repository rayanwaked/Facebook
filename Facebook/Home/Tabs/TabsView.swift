//
//  TabsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Text("Feed")
                .font(.system(size: 24))
                .fontWeight(.bold)
            Text("Reels")
                .font(.system(size: 20))
            Text("Watch")
                .font(.system(size: 20))
            
            Spacer()
            
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "MicrophoneRound"))
            IconButtonView(viewModel: IconButtonViewModel(), model: IconButtonModel(imageName: "VideoRound"))
        }
    }
}

#Preview("Tabs View") {
    TabsView()
}
