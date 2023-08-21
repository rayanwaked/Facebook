//
//  ReactionGroupView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReactionGroupView: View {
    var borderPadding = CGFloat(16)
    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ReactionPillView(model: ReactionPillModel(imageName: "Like", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Laugh", label: "000"))
                    ReactionPillView(model: ReactionPillModel(imageName: "Hate", label: "000"))
                    
                    ReactionPillView(model: ReactionPillModel(imageName: "Love", label: "000"))
                    
                    ReactionPillView(model: ReactionPillModel(imageName: "SmileAddRound", label: "Add"))
                }
                .padding([.leading, .trailing], borderPadding)
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
             
            HStack {
                ReactionPillView(model: ReactionPillModel(imageName: "CommentsFilled2", label: ""))
                ReactionPillView(model: ReactionPillModel(imageName: "SendFilled2", label: ""))
//                ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
//                ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
//                    .padding(.leading, -15)
//                ProfileButtonView(model: ProfileButtonModel(width: 30, height: 30))
//                    .padding(.leading, -15)
            }
        }
        .padding(.leading, -borderPadding)
        
//        HStack {
//            Spacer()
//            
//            TextButtonView(model: TextButtonModel(text: "00 Comments", fontSize: Font.body, fontWeight: .regular, fontColor: Color.gray))
//            {print("Open Comments")}
//            TextButtonView(model: TextButtonModel(text: "00 Shares", fontSize: Font.body, fontWeight: .regular, fontColor: Color.gray))
//            {print("Open Sharesheet")}
//        }
    }
}

#Preview("Reaction Group View") {
    ReactionGroupView()
}
