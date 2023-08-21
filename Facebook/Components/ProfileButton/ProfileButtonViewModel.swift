//
//  ProfileButtonViewController.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import Foundation
import SwiftUI

class ProfileButtonViewModel: ObservableObject {
    let imageURL: URL?
    
    init(imageURL: URL?) {
        self.imageURL = imageURL
    }
}

struct AsyncImageModifier: ViewModifier {
    @State private var downloadedImage: UIImage?

    func body(content: Content) -> some View {
        content
            .overlay(
                AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                } placeholder: {
                    if let downloadedImage = downloadedImage {
                        Image(uiImage: downloadedImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                    } else {
                        Color.gray
                            .clipShape(Circle())
                    }
                }
            )
            .onAppear {
                downloadImage()
            }
    }

    private func downloadImage() {
        guard let imageUrl = URL(string: "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80") else {
            return
        }

        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            if let data = data, error == nil {
                DispatchQueue.main.async {
                    downloadedImage = UIImage(data: data)
                }
            }
        }.resume()
    }
}

extension View {
    func asyncImageModifier() -> some View {
        self.modifier(AsyncImageModifier())
    }
}
