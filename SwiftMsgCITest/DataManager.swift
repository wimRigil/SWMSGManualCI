//
//  DataManager.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/17/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import Foundation
import KeychainAccess

class DataManager: NSObject {
    
    static let shared = DataManager()
    
    var keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
    
    
}


