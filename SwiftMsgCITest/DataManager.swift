//
//  DataManager.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/17/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import UIKit
//import KeychainAccess
import CoreData

class DataManager: NSObject {
    
    static let shared = DataManager()
    
//    var keychain = Keychain(service: "com.appsdeveloper.SwiftMsgCITest")
    
    lazy var managedObjectContext: NSManagedObjectContext = {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
//    let coordinator = self.persistentStoreCoordinator
    var managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
//    managedObjectContext.persistentStoreCoordinator = coordinator
    return managedObjectContext
    }()
    
    
    

}


