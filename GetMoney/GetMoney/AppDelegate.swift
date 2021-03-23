//
//  AppDelegate.swift
//  GetMoney
//
//  Created by llbt.bu2gk on 2021/3/19.
//

import UIKit
import LeanCloud

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // 在 Application 初始化代码执行之前执行
        LCApplication.logLevel = .all    // 代码发布后需要关闭
        do {
            try LCApplication.default.set(
                id: APP_ID,
                key: APP_KEY,
                serverURL: REST_API)
        } catch {
            print(error)
        }

        
       
        
        return true
    }

    // MARK: UISceneSession Li2fecycle

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

