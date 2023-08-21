//
//  HeaderView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct HeaderView: View {
    let borderPadding = CGFloat(16)
    
    var body: some View {
        VStack {
            HStack {
                ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40))
                
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
