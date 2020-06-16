//
//  UIApplication+Extensions.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//
import Foundation
import UIKit

extension UIApplication {
    class func topVC() -> UIViewController {
        // cheating, I know
        // Normally if you want the handler to have state you should subclass it.
        return UIApplication.shared.keyWindow!.rootViewController!
    }

    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}
