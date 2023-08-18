//
//  Item.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
