//
//  AppDelegate.swift
//  AppLoginCounter
//
//  Created by macbook on 19.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        incrementAppLaunchCounter()
        return true
    }
    
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

extension AppDelegate {
    
    private func incrementAppLaunchCounter() {
        
        let userDefaults = UserDefaults.standard
        var launchCount = userDefaults.integer(forKey: "appLaunchCount")
        
        launchCount += 1
        
        userDefaults.set(launchCount, forKey: "appLaunchCount")
    }
    
}

