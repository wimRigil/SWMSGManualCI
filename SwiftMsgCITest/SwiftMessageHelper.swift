//
//  SwiftMessageHelper.swift
//  SwiftMsgCITest
//
//  Created by Wim Tanudjaja on 1/15/20.
//  Copyright © 2020 Wim Tanudjaja. All rights reserved.
//

import UIKit
import SwiftMessages

enum SwiftMessagesCode: String {
    case onInternetConnection = "No internet connection, please try again"
    case failCausingError = "Error, Please try again"
}

class SwiftMessageHelper: NSObject {
    
    class func showRefreshError() {
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureContent(body: "failedto update data")
        view.configureTheme(.error)
        SwiftMessages.show(view: view)
    
    }
    
    class func waitingMessage(message: String) {
        let view = MessageView.viewFromNib(layout: .statusLine)
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 180)
        view.backgroundView.backgroundColor = UIColor(red: 0.11, green: 0.40, blue: 0.63, alpha: 1.0)
        view.configureTheme(.info)
        SwiftMessages.show(config: config, view: view)
    }

}
