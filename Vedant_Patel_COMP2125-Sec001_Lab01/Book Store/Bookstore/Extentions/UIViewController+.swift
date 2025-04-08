//
//  UIViewController+.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

extension UIViewController {
    func shortAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            alert.dismiss(animated: true, completion: nil)
        }

    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true)
    }
    
    func showAlertToSettings(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let goToSettings = UIAlertAction(title: "Settings", style: .default) { _ in
            guard let setttingsURL = URL(string: UIApplication.openSettingsURLString) else { return }
            if UIApplication.shared.canOpenURL(setttingsURL) {
                UIApplication.shared.open(setttingsURL)
            }
        }
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alertController.addAction(goToSettings)
        self.present(alertController, animated: true)
    }
}
