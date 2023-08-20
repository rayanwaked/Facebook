//
//  HeaderView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/19/23.
//

import SwiftUI

struct HeaderView: View {
    let borderPadding = CGFloat(18)
    
    var body: some View {
        VStack {
            Logo()
                .padding(.top, borderPadding)
            
            HStack {
                ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40))
                
                Spacer()
                
                SearchBarView()
            }
        }
    }
}

#Preview("Header View") {
    HeaderView()
}