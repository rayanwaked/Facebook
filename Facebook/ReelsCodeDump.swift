//
//  ReelsCodeDump.swift
//  Facebook
//
//  Created by Rayan Waked on 8/22/23.
//

//import SwiftUI
//
//struct SwipeActionView: View {
//    @EnvironmentObject var swipeActionModel: SwipeActionModel
//
//    var body: some View {
//        Rectangle()
//            .foregroundStyle(Color.black.opacity(0.01))
//            .frame(maxWidth: .infinity)
//            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
//                                .onEnded({ value in
//                                    if value.translation.height < 0 {
//                                        swipeActionModel.showModal = true
//                                    }
//                                }))
//            .fullScreenCover(isPresented: $swipeActionModel.showModal) {
//                ZStack(alignment: .topTrailing) {
//                    ReelPostView(model: ReelPostModel(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"))
//
//                    IconButtonView(model: IconButtonModel(imageName: "ReelsHomeRound")) {
//                        swipeActionModel.showModal = false
//                    }
//                    .padding(.top, borderPadding * 4)
//                    .padding(.trailing, borderPadding)
//                }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .ignoresSafeArea(.all)
//                .background(Color.black)
//            }
//    }
//}
//
//#Preview("Swipe Action View") {
//    SwipeActionView()
//}

//
//class SwipeActionModel: ObservableObject {
//    @Published var showModal = false
//}
//

//struct ReelData: Hashable {
//    let name: String
//    let date: String
//    let reel: String
//    let caption: String
//}
//
//let reels: [ReelData] = [
//    ReelData(name: "First Last", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
//    ReelData(name: "First Last2", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet"),
//    ReelData(name: "First Last3", date: "Month 00 at 00:00", reel: "SampleImage", caption: "Lorem ipsum dolor set amet")
//]

//GeometryReader { proxy in
//    TabView {
//        ForEach(reels, id: \.self) { reelData in
//            ReelPostView(model: ReelPostModel(name: reelData.name, date: reelData.date, reel: reelData.reel, caption: reelData.caption))
//                .rotationEffect(.degrees(-90))
//                .frame(
//                    width: proxy.size.width,
//                    height: proxy.size.height
//                )
//        }
//    }
//    .frame(
//        width: proxy.size.height,
//        height: proxy.size.width
//    )
//    .rotationEffect(.degrees(90), anchor: .topLeading)
//    .offset(x: proxy.size.width)
//    .tabViewStyle(
//        PageTabViewStyle(indexDisplayMode: .never)
//    )
//}
//.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.9)
