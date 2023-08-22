//
//  NotificationView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Notifications")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.blue)
                    .padding(.top, 16)
            }
            .padding(borderPadding)
        }
    }
}

#Preview("Nofication View") {
    NotificationView()
}
