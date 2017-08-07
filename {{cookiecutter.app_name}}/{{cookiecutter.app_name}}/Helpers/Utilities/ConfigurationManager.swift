//
//  ConfigurationManager.swift
//  {{cookiecutter.app_name}}
//
//  Created by PiotrGorzelanyMac on 07/08/2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import Foundation

class ConfigurationManager {
    
    enum Configuration: String {
        case Debug, Release, Production
    }
    
    // MARK: Shared instance
    
    static let shared = ConfigurationManager()
    
    // MARK: Properties
    
    private let configurationKey = "Configuration"
    private let configurationDictionaryName = "Configuration"
    private let configurationDirectory = "SupportingFiles"
    private let backendUrlKey = "backendUrl"
    
    let activeConfiguration: Configuration
    private let activeConfigurationDictionary: NSDictionary
    
    // MARK: Lifecycle
    
    init () {
        let bundle = Bundle(for: ConfigurationManager.self)
        guard let rawConfiguration = bundle.object(forInfoDictionaryKey: configurationKey) as? String,
            let activeConfiguration = Configuration(rawValue: rawConfiguration),
            let configurationDictionaryPath = bundle.path(forResource: configurationDictionaryName, ofType: "plist"),
            let activeEnvironmentDictionary = NSDictionary(contentsOfFile: configurationDictionaryPath)?[activeConfiguration.rawValue] as? NSDictionary
            else {
                fatalError("Configuration Error")
                
        }
        self.activeConfiguration = activeConfiguration
        self.activeConfigurationDictionary = activeEnvironmentDictionary
    }
    
    // MARK: Methods
    
    private func getActiveVariableValue<V>(forKey key: String) -> V {
        return activeConfigurationDictionary[key] as! V
    }
    
    func isRunning(in configuration: Configuration) -> Bool {
        return activeConfiguration == configuration
    }
    
    func getBackendUrl() -> URL {
        let backendUrlString: String = getActiveVariableValue(forKey: backendUrlKey)
        return URL(string: backendUrlString)!
    }
}
