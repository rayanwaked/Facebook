//
//  ReelsPostViewModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/21/23.
//

import Foundation
import SwiftUI

struct FullScreenModifier: ViewModifier {
    @State private var isFullScreen = false
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .ignoresSafeArea()
            .onTapGesture {
                withAnimation {
                    isFullScreen.toggle()
                }
            }
    }
}
