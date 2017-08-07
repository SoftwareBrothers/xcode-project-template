//
//  DeeplinkManager.swift
//  {{cookiecutter.app_name}}
//
//  Created by PiotrGorzelanyMac on 07/08/2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import Foundation

class DeeplinkManager {
    
    enum Path: String {
        case resetPassword = "/api/password/reset" // example deeplink path
    }
    
    // MARK: Shared instance
    
    static let shared = DeeplinkManager()
    
    // MARK: Properties
    
    var navigator = MainNavigator.shared
    
    // MARK: Methods
    
    func handleDeeplink(with url: URL) {
        guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
            let path = getPath(from: components) else {
                return
        }
        
        switch path {
        case .resetPassword:
            handleResetPasword(with: components)
        }
    }
    
    // MARK: Private methods
    
    private func getPath(from components: URLComponents) -> Path? {
        return Path(rawValue: components.path)
    }
    
    private func handleResetPasword(with components: URLComponents) {
        // implementation goes here, probably extract token from query items and send to api
    }
}
