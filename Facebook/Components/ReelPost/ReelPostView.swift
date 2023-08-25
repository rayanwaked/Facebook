//
//  ReelsModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import SwiftUI

struct ReelPostView: View {
    @EnvironmentObject var tabsModel: TabsModel
    let deviceType = UIDevice().type.rawValue
    var model: ReelPostModel

    let reels: [ReelPostModel] = [
        ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
        ReelPostModel(name: "First Last2", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
    ]
    
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(reels, id: \.self) { reelData in
                    ReelContent()
                }
                .frame(width: proxy.size.width, height: proxy.size.height)
                .rotationEffect(.degrees(-90))
            }
            .frame(width: proxy.size.height, height: proxy.size.width)
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: proxy.size.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .ignoresSafeArea(.all)
        // Fixing unwanted white area caused by ignoresafearea and rotationeffect
        // Fix does not work on simulator or preview
        .padding(.trailing, UIDevice.isiPhone ? UIScreen.main.bounds.width * -0.017 : UIScreen.main.bounds.width * -0.003)
        .padding(.trailing, deviceType.contains("Plus") || deviceType.contains("Max") ? UIScreen.main.bounds.width * -0.012 : UIScreen.main.bounds.width * -0.00)
        .background(Color.black)
    }
}

#Preview("Reels Post Preview") {
    ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
        .preferredColorScheme(.light)
}
