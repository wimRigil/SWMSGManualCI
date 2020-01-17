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
    
    let coachMarksController = CoachMarksController()
    
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
//            DataManager.shared.removeCredentials()
            userDefaults.set(true, forKey: UserDefaultConstants.FirstRun)
            return true // true when first time it will run
        }
    }
    
    //var keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
    
//    private func saveFirstRunOnDevice() {
//        UserDefaults.standard.set(false, forKey: UserDefaultConstants.FirstRun)
//    }
//
//    func switchBundleIDKeychain() {
//        if Bundle.main.bundleIdentifier == "com.appsdeveloper.SwiftMsgCITest" {
//            keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
//        }
//    }
//
//    func removeCredentials() -> Void {
//        // Remove UserName,Password, Autho Token
//        self.switchBundleIDKeychain()
//        do {
//            try keychain.remove(KeyChainConstant.UserName)
//            try keychain.remove(KeyChainConstant.Password)
//
//
//        } catch let error {
//            print("error: \(error)")
//        }
//    }
//
//    func saveUsername(username: String) -> Void {
//        self.switchBundleIDKeychain()
//        do {
//            try keychain.set(username, key: KeyChainConstant.UserName)
//            saveFirstRunOnDevice()
//        }
//        catch let error {
//            print(error)
//        }
//    }
//
//    func userName() -> String {
//        self.switchBundleIDKeychain()
//
//        let checkForFirstRun : Bool = checkForFirstRunOnDevice()
//        if checkForFirstRun {
//            DataManager.shared.removeCredentials()
//            return ""
//
//        }else{
//            let savedUsername = keychain[string: KeyChainConstant.UserName]
//            if (savedUsername != nil) {
//                return savedUsername!
//            }else{
//                return ""
//            }
//        }
//    }
    
    
    
//    func requestBlueSheetDynamicForms(urlExtension: String, bidId: Int, completion: @escaping (_ success: Bool, _ response: HTTPURLResponse) -> Void) {
//        
//        let fullURL = " "
//        
//        let bearer = "bearer "
//        let header = [
//            "Authorization": bearer
//            ] as HTTPHeaders
//        
//        Alamofire.request(fullURL, method: .get, encoding: JSONEncoding.default, headers:header).validate().responseJSON { response in
//            
//            let code = response.response?.statusCode ?? 0
//            print("DataManager - Request BlueSheet - HTML Code : \(code)")
//            
//            if (code == 401 || code == 500)   {
//                
//            }
//            
//            if code == 404 {
//                print("DataManager - Request Blue sheet error 404")
//                //SwiftMessagesHelper.showError(message: SwiftErrorMessage.failShowBlueSheet.rawValue)
//                
//            }
//            
//            switch response.result {
//                
//            case .success(let value):
//                
//                
//                print("show the value: \(value)")
//                
//                
//                if response.response != nil {
//                    completion(true, response.response!)
//                }
//            case .failure(let error):
//                
//                 print("show the error for Blue Sheet: \(error)")
//                
//                 if response.response != nil {
//                    completion(false, response.response!)
//                 } else {
//                    
//                }
//                
//            }
//        }
//        
//    }
    
    
    

}
