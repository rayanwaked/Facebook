//
//  ProfilePicture.swift
//  Facebook
//
//  Created by Rayan Waked on 8/18/23.
//

import SwiftUI

struct ProfileButtonView: View {
    @State private var downloadedImage: UIImage?
    var model: ProfileButtonModel

    var body: some View {
        Circle()
            .frame(width: model.width, height: model.height)
            .overlay(
                AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                } placeholder: {
                    // Custom placeholder view using the downloaded image
                    if let downloadedImage = downloadedImage {
                        Image(uiImage: downloadedImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                    } else {
                        Color.gray // Fallback if downloadedImage is nil
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

#Preview("Profile Button View") {
    ProfileButtonView(model: ProfileButtonModel(width: 40, height: 40))
}
