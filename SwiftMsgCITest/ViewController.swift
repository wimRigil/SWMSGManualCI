//
//  ViewController.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/15/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import UIKit
import MBProgressHUD
import InstructionsFramework
import KeychainAccess

class ViewController: UIViewController, CoachMarksControllerDelegate {

    let coachMarksController = CoachMarksController()
    
    var keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.coachMarksController.dataSource = self as? CoachMarksControllerDataSource
        
        
        
    }
    
    
    
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        SwiftMessageHelper.showError(message: SwiftMessagesCode.onInternetConnection.rawValue)
        //SwiftMessageHelper.showRefreshError()
        
    }

}

