//
//  ViewController.swift
//  can-you-hack-it
//
//  Created by Gregory Ziegan on 11/10/14.
//  Copyright (c) 2014 CWRU Undergrad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var connectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        JTagSignatureStore.sharedInstance.add("someshit!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connectToBluetooth(sender: UIButton) {
        if sender === connectButton {
            var signature = BluetoothConnection().getJTagSignature()
            if JTagSignatureStore.sharedInstance.isValid(signature: signature) {
                self.view.backgroundColor = UIColor.greenColor()
            } else {
                self.view.backgroundColor = UIColor.redColor()
            }
        }
    }
}

