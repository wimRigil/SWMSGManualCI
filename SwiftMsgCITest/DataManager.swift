//
//  DataManager.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/16/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import UIKit
import Alamofire
import KeychainAccess
import SGAnalyticsFramework
import InstructionsFramework

class DataManager: NSObject {
    
    static let shared = DataManager()
    
    enum KeyChainConstant {
        static let UserName = "Username"
        static let Password = "Password"
        
    }
    
    enum UserDefaultConstants{
        static let FirstRun = "FirstRun"
        static let OrganizationID = "Organization ID"
        static let APIURL = "APIURL"
    }
    
    func checkForFirstRunOnDevice() -> Bool {
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: UserDefaultConstants.FirstRun) != nil {
            let savedFirstRunStatus = userDefaults.bool(forKey: UserDefaultConstants.FirstRun)
            return savedFirstRunStatus
            
        } else {
            DataManager.shared.removeCredentials()
            userDefaults.set(true, forKey: UserDefaultConstants.FirstRun)
            return true // true when first time it will run
        }
    }
    
    var keychain = Keychain(service: "com.rigilenterprise.meenterprise05232013")
    
    private func saveFirstRunOnDevice() {
        UserDefaults.standard.set(false, forKey: UserDefaultConstants.FirstRun)
    }
    
    func switchBundleIDKeychain() {
        if Bundle.main.bundleIdentifier == "com.rigil.agenda01032012" {
            keychain = Keychain(service: "com.rigil.agenda01032012")
        }
    }
    
    func removeCredentials() -> Void {
        // Remove UserName,Password, Autho Token
        self.switchBundleIDKeychain()
        do {
            try keychain.remove(KeyChainConstant.UserName)
            try keychain.remove(KeyChainConstant.Password)
            
            
        } catch let error {
            print("error: \(error)")
        }
    }
    
    func saveUsername(username: String) -> Void {
        self.switchBundleIDKeychain()
        do {
            try keychain.set(username, key: KeyChainConstant.UserName)
            saveFirstRunOnDevice()
        }
        catch let error {
            print(error)
        }
    }
    
    func userName() -> String {
        self.switchBundleIDKeychain()
        
        let checkForFirstRun : Bool = checkForFirstRunOnDevice()
        if checkForFirstRun {
            DataManager.shared.removeCredentials()
            return ""
            
        }else{
            let savedUsername = keychain[string: KeyChainConstant.UserName]
            if (savedUsername != nil) {
                return savedUsername!
            }else{
                return ""
            }
        }
    }

}
