//
//  VideoView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Messages")
                
                ActionBarView()
                    .padding(.bottom)
                
                HStack(alignment: .center) {
                    ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50, story: true))
                    
                    VStack(alignment: .leading) {
                        Text("First Last")
                        Text("Lorem ipsum dolor set amet")
                    }
                    
                    Spacer()
                    
                    Text("7")
                }
                
                HStack(alignment: .center) {
                    ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50, story: true))
                    
                    VStack(alignment: .leading) {
                        Text("First Last")
                        Text("Lorem ipsum dolor set amet")
                    }
                    
                    Spacer()
                    
                    Text("7")
                }
            }
            .padding()
        }
    }
}

#Preview("Message View") {
    MessageView()
}
