//
//  Alert.swift
//  UIAlertController+
//
//  Created by Takeru Sato on 2018/12/30.
//  Copyright © 2018 son. All rights reserved.
//

import UIKit

struct Alert {
    
    private static func show(on viewController: UIViewController, title: String, message: String? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    static func showTypeA(on viewController: UIViewController) {
        show(on: viewController, title: "Type A", message: "message A")
    }
    
    static func showTypeB(on viewController: UIViewController) {
        show(on: viewController, title: "Type B", message: "message B")
    }
    
    static func showTypeC(on viewController: UIViewController) {
        show(on: viewController, title: "Type C", message: "message C")
    }
}
