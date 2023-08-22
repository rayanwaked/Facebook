//
//  ReelsView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct ReelsView: View {
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
                    ReelPostView(model: ReelPostModel(name: reelData.name, date: reelData.date, reel: reelData.reel, caption: reelData.caption))
                        .rotationEffect(.degrees(-90))
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: proxy.size.width
                        )
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
        }
        .frame(height: UIScreen.main.bounds.height * 0.9)
        .padding([.leading, .trailing], -borderPadding)
    }
}

#Preview("Reels View") {
    ReelsView()
}
