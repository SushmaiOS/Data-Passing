//
//  AppManager.swift
//  DataPassing
//
//  Created by Meheboob MacBook on 10/8/18.
//  Copyright © 2018 Namsha Tech. All rights reserved.
//

import UIKit

 @objcMembers class AppManager: NSObject {
    static let sharedInstance = AppManager()
    
    var nameString = String()
    
    private override init() {
    
    }
    
}
