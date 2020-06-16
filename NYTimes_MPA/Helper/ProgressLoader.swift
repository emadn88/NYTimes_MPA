//
//  ProgressLoader.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import UIKit
import ARSLineProgress
class ProgressLoader: NSObject {
    static func show() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        ARSLineProgress.show()
    }

    static func dismiss() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        ARSLineProgress.hide()
    }
}
