//
//  TestsAppDelegate.swift
//  {{cookiecutter.app_name}}Tests
//
//  Created by Piotr Gorzelany on 22.11.2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import UIKit

/// The TestsAppDelegate used when the app is run in the test environment
/// This AppDelegate usage is determined in the main.swift file in the main app target
class TestsAppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    lazy var navigator = MainNavigator.shared
    lazy var deeplinkManager = DeeplinkManager.shared
    lazy var notificationsManager = NotificationsManager.shared
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //  Customize the TestsAppDelegate here
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        return true
    }
}
