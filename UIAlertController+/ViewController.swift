//
//  ViewController.swift
//  UIAlertController+
//
//  Created by Takeru Sato on 2018/12/30.
//  Copyright © 2018 son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        Alert.showTypeA(on: self)
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        Alert.showTypeB(on: self)
    }
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {
        Alert.showTypeC(on: self)
    }
    
    @IBAction func fourthButtonTapped(_ sender: UIButton) {
        Alert.showTypeD(on: self) {
            print("completed")
        }
    }
    
    @IBAction func fifthButtonTapped(_ sender: UIButton) {
        Alert.showTypeE(on: self, completion1: {
            print("completion1")
        }) {
            print("completion2")
        }
    }
}

