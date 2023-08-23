//
//  ReelsModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import SwiftUI

struct ReelPostView: View {
    @EnvironmentObject var tabsModel: TabsModel
    var model: ReelPostModel
    
    struct ReelData: Hashable {
        let name: String
        let date: String
        let reel: String
        let caption: String
    }

    let reels: [ReelData] = [
        ReelData(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
        ReelData(name: "First Last2", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
        ReelData(name: "First Last3", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet")
    ]
    
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(reels, id: \.self) { reelData in
                    Image("SampleReel")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .rotationEffect(.degrees(-90))
                }
            }
            .frame(
                width: proxy.size.height,
                height: proxy.size.width
            )
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: proxy.size.width)
            .tabViewStyle(
                PageTabViewStyle(indexDisplayMode: .never)
            )
            
            VStack {
                HStack {
                    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40, story: false))
                    VStack(alignment: .leading) {
                        Text(model.name)
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        Text(model.caption)
                            .font(.subheadline)
                            .foregroundStyle(Color.white)
                    }
                    
                    Spacer()
                    
                    ReactionPillView(model: ReactionPillModel(imageName: "ReelsHomeFilled", label: "", size: 26)) {
                        tabsModel.showModal = false
                    }
                }
                
                Spacer()
                
                ReelsReactionGroupView()
                    .frame(height: 30)
            }
            .padding(borderPadding)
            .padding([.top, .bottom], borderPadding * 3)
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview("Reels Post Preview") {
    ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
        .preferredColorScheme(.dark)
}
