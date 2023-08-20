//
//  FacebookApp.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI
import SwiftData

@main
struct FacebookApp: App {
    @StateObject var tabBarViewModel = TabBarViewModel()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                VStack {
                    //MARK: Page
                    switch tabBarViewModel.appPage {
                    case 0: HomeView()
                    case 1: MenuView()
                    case 2: MessageView()
                    case 3: NotificationView()
                    case 4: ProfileView()
                    default: MenuView()
                    }
                }
                .padding(.bottom, -10)
                
                //MARK: Tab Bar
                TabBarView()
                    .environmentObject(tabBarViewModel)
            }
            .overlay(alignment: .top) {
                Color("Background")
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 0)
            }
        }
    }
}
