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
    
    class func showError(message: String) {
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 10)
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureContent(body: message)
        view.configureTheme(.error)
        view.backgroundView.backgroundColor = UIColor.gray
        SwiftMessages.show(config: config, view: view)
    }

}
