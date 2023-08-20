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
            TextButtonView(model: TextButtonModel(text: "Feed")) {
                print("0")
            }
            
            TextButtonView(model: TextButtonModel(text: "Reels")) {
                print("1")
            }
            
            TextButtonView(model: TextButtonModel(text: "Watch")) {
                print("2")
            }
            
            Spacer()
            
            IconButtonView(model: IconButtonModel(imageName: "MicrophoneRound"))
            IconButtonView(model: IconButtonModel(imageName: "VideoRound"))
        }
    }
}

#Preview("Tabs View") {
    TabsView()
}
