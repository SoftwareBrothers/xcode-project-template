//
//  NotificationsManager.swift
//  {{cookiecutter.app_name}}
//
//  Created by PiotrGorzelanyMac on 07/08/2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

class NotificationsManager: NSObject {

    static let shared = NotificationsManager()

    // MARK: Properties

    lazy var navigator = MainNavigator.shared

    // MARK: Public methods

    func configure() {
        UNUserNotificationCenter.current().delegate = self
    }

    func registerForRemoteNotifications() {
        let application = UIApplication.shared
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions) {_, _ in
            // do nothing for now
        }

        application.registerForRemoteNotifications()
    }

    func handleRemoteNotification(with userInfo: [AnyHashable: Any]) {
    }
}

extension NotificationsManager: UNUserNotificationCenterDelegate {

    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(.alert)
    }
}
