//
//  MainNavigator.swift
//  {{cookiecutter.app_name}}
//
//  Created by PiotrGorzelanyMac on 07/08/2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import UIKit

class MainNavigator {
    
    // MARK: Shared instance
    
    static let shared = MainNavigator()
    
    /** Replaces root view controller. You can specify the replacment animation type. If no animation type is specified, there is no animation */
    func setRootViewController(controller: UIViewController, animatedWithOptions: UIViewAnimationOptions?) {
        let window = UIApplication.shared.keyWindow!
        if let animationOptions = animatedWithOptions, window.rootViewController != nil {
            window.rootViewController = controller
            UIView.transition(with: window, duration: 0.33, options: animationOptions, animations: {
            }, completion: nil)
        } else {
            window.rootViewController = controller
        }
    }
    
    func loadMainAppStructure() {
        // Customize your app structure here
        let controller = UIViewController()
        controller.view.backgroundColor = UIColor.red
        setRootViewController(controller: controller, animatedWithOptions: nil)
    }
}
