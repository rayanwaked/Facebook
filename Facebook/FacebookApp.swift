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

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
