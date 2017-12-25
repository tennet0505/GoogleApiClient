//
//  AppDelegate.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let googleService = GooleService()
        googleService.getImage(
            successHandler: { items in
                print(items)
        },
            errorHandler: { error in
                print(error)
        }
        )
        
        print(" change for git test change for git test change for git test change for git test")
        
        return true
    }

}

