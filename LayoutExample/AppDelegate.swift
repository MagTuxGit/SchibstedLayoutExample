//
//  AppDelegate.swift
//  LayoutExample
//
//  Created by Andriy Trubchanin on 12/7/17.
//  Copyright © 2017 Trand. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = HelloViewController()
        window?.makeKeyAndVisible()
        return true
    }
    
}

