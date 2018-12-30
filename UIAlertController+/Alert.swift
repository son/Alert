//
//  Alert.swift
//  UIAlertController+
//
//  Created by Takeru Sato on 2018/12/30.
//  Copyright © 2018 son. All rights reserved.
//

import UIKit

struct Alert {
    
    private static func show(on viewController: UIViewController, title: String, message: String? = nil, optionTitle: String, completion: @escaping() -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: optionTitle, style: .default, handler: { (_) in
            completion()
        }))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    private static func show(on viewController: UIViewController, title: String, message: String? = nil, title1: String, completion1: @escaping() -> Void, title2: String, completion2: @escaping() -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: title1, style: .default, handler: { (_) in
            completion1()
        }))
        alert.addAction(UIAlertAction(title: title2, style: .default, handler: { (_) in
            completion2()
        }))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    static func show(on viewController: UIViewController, title: String, message: String? = nil) {
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
    
    static func showTypeD(on viewController: UIViewController, completion: @escaping() -> Void) {
        show(on: viewController, title: "Type D", optionTitle: "option") {
            completion()
        }
    }
    
    static func showTypeE(on viewController: UIViewController, completion1: @escaping() -> Void, completion2: @escaping() -> Void) {
        show(on: viewController, title: "Type E", title1: "option1", completion1: {
            completion1()
        }, title2: "option2") {
            completion2()
        }
    }
}
