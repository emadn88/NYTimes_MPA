//
//  UIImageVIew+Extension.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//
import UIKit

extension UIImageView {
    func downloadedFrom(url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFill, completionHandler: @escaping (_ isSuccess: Bool) -> Void) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in

            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200 else {
                completionHandler(false)
                return
            }

            guard let mimeType = response?.mimeType, mimeType.hasPrefix("image") else {
                completionHandler(false)
                return
            }
            guard let data = data, error == nil else {
                completionHandler(false)
                return
            }
            guard let image = UIImage(data: data)
            else {
                completionHandler(false)
                return
            }
            DispatchQueue.main.async { () -> Void in
                completionHandler(true)
                self.image = image
            }
        }.resume()
    }

    func downloadedFrom(link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit, completionHandler: @escaping (_ isSuccess: Bool) -> Void) {
        guard let url = URL(string: link) else {
            completionHandler(false)
            return
        }
        downloadedFrom(url: url, contentMode: mode) { status in
            completionHandler(status)
        }
    }
}
