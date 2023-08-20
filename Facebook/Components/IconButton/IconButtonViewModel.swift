//
//  IconButtonViewModel.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import Foundation

class IconButtonViewModel: ObservableObject {
    var iconButtonTappedAction: (() -> Void)?
    
    func iconButtonTapped(with model: IconButtonModel) {
        iconButtonTappedAction?()
    }
}
