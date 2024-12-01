//
//  AppDelegate.swift
//  FarmsTabelView
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = FarmsViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }


}

