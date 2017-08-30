//
//  AlertPresenter.swift
//  {{cookiecutter.app_name}}
//
//  Created by Piotr Gorzelany on 30.08.2017.
//  Copyright © 2017 rst-it. All rights reserved.
//

import UIKit

protocol AlertPresenter {
    
    func showAlert(title: String?, message: String?, completion: (() -> Void)?)
    func showAlert(title: String?, message: String?)
    func showAlert(message: String)
}

extension AlertPresenter {
    
    func showAlert(title: String?, message: String?) {
        showAlert(title: title, message: message, completion: nil)
    }
    
    func showAlert(message: String) {
        showAlert(title: nil, message: message)
    }
}

/* You can customize this extension to show a custom alert */
extension AlertPresenter where Self: UIViewController {
    
    private func createAlertController(withTitle title: String?, message: String?, actions: [UIAlertAction]) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        actions.forEach(alert.addAction)
        return alert
    }
    
    func showAlert(withTitle title: String?, message: String?, actions: [UIAlertAction]) {
        // Check if the view controller is already presenting an alert, only show one alert at a time
        guard (presentedViewController as? UIAlertController) == nil else {
            return
        }
        let alert = createAlertController(withTitle: title, message: message, actions: actions)
        present(alert, animated: true, completion: nil)
    }
    
    func showAlert(title: String?, message: String?, completion: (() -> Void)?) {
        let okAction = UIAlertAction(title: Localizations.common.ok, style: UIAlertActionStyle.default) { _ in
            completion?()
        }
        showAlert(withTitle: title, message: message, actions: [okAction])
    }
    
    func showConfirmationAlert(withTitle title: String?, message: String?, completion: (() -> Void)?) {
        let okAction = UIAlertAction(title: Localizations.common.ok, style: .default, handler: { (alert) in
            completion?()
        })
        let cancelAction = UIAlertAction(title: Localizations.common.cancel, style: .cancel, handler: nil)
        showAlert(withTitle: title, message: message, actions: [cancelAction, okAction])
    }
}

