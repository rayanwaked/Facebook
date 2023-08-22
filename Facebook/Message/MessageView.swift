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
                ZStack {
                    Text("Messages")
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.blue)
                    
                    HStack {
                        Spacer()
                        IconButtonView(model: IconButtonModel(imageName: "AddRound"))
                    }
                }
                .padding(.top, 16)
                
                ActionBarView()
                    .padding(.bottom)
                
                HStack(alignment: .center) {
                    ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50, story: true))
                    
                    VStack(alignment: .leading) {
                        Text("First Last")
                            .font(.headline)
                        Text("Lorem ipsum dolor set amet")
                            .foregroundStyle(Color.gray)
                    }
        
                    Spacer()
                    
                    Text("7")
                        .padding([.top, .bottom], 5)
                        .padding([.leading, .trailing], 10)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                HStack(alignment: .center) {
                    ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50, story: false))
                    
                    VStack(alignment: .leading) {
                        Text("First Last")
                            .font(.headline)
                        Text("Lorem ipsum dolor set amet")
                            .foregroundStyle(Color.gray)
                    }
                    
                    Spacer()
                    
                    Text("17")
                        .padding([.top, .bottom], 5)
                        .padding([.leading, .trailing], 10)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                HStack(alignment: .center) {
                    ProfileButtonView(model: ProfileButtonModel(width: 50, height: 50, story: false))
                    
                    VStack(alignment: .leading) {
                        Text("First Last")
                            .font(.headline)
                        Text("Lorem ipsum dolor set amet")
                            .foregroundStyle(Color.gray)
                    }
                    
                    Spacer()
                }
            }
            .padding(borderPadding)
        }
    }
}

#Preview("Message View") {
    MessageView()
}
