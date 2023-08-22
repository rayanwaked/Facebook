//
//  MenuView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Good Morning, First!")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.blue)
                    .padding(.top, 20)
            }
            .padding(borderPadding)
        }
    }
}

#Preview("Menu View") {
    MenuView()
}
