//
//  AddIndicatorView.swift
//  Facebook
//
//  Created by Rayan Waked on 8/20/23.
//

import SwiftUI

struct AddIndicatorView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 22)
                .foregroundStyle(Color("Background"))
            Circle()
                .frame(width: 18)
                .foregroundStyle(Color.blue)
            Text("+")
                .foregroundStyle(Color.white)
                .font(Font.body.weight(.bold))
        }
    }
}

#Preview("Add Indicator View") {
    AddIndicatorView()
}
