//
//  UIAlertController+Extensions.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    func show() {
        DispatchQueue.main.async {
            UIApplication.topVC().present(self, animated: true, completion: nil)
        }
    }

    func show(message: String) {
        self.show(title: "", message: message)
    }

    func show(title: String, message: String) {
        self.title = title
        self.message = message
        self.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            switch action.style {
            case .default:
                debugPrint("default")
            case .cancel:
                debugPrint("cancel")
            case .destructive:
                debugPrint("destructive")
            }
        }))
        self.show()
    }
}
