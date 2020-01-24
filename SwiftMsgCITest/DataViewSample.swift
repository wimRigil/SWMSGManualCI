//
//  DataViewSample.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/17/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import UIKit
import KeychainAccess
import CoreLocation

class DataViewSample: UIViewController, CLLocationManagerDelegate {
    
    var keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
    
    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()

        view.backgroundColor = .gray
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
