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
    @StateObject var pageInformation = PageDisplay()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                VStack {
                    //MARK: Page
                    switch pageInformation.appPage {
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
                    .environmentObject(pageInformation)
            }
        }
    }
}
