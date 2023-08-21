//
//  HeaderView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct HeaderView: View {    
    var body: some View {
        VStack {
            HStack {
                ProfileButtonView(model: ProfileButtonModel(width: 45, height: 45, story: false))
                
                Spacer()
                
                ActionBarView() {
                    print("Hey")
                }
            }
        }
    }
}

#Preview("Header View") {
    HeaderView()
}
