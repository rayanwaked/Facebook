//
//  ProfileButtonViewController.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import Foundation

class ProfileButtonViewModel: ObservableObject {
    let imageURL: URL?
    
    init(imageURL: URL?) {
        self.imageURL = imageURL
    }
}
