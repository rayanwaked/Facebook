//
//  Facebook Logo.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Text("facebook")
            .font(.system(size: 40))
            .fontWeight(.bold)
            .foregroundStyle(Color.blue)
    }
}

#Preview("Logo View") {
    Logo()
}
