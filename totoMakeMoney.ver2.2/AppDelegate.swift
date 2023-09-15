//
//  AppDelegate.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // -----＊＊追記部分＊＊----- //
        changeNavigationBarColor()
        // -----＊＊追記部分＊＊----- //
        return true
    }
    // -----＊＊追記部分＊＊----- //
    func changeNavigationBarColor() {
        // 全てのNavigation Barの色を変更する
        // Navigation Bar の背景色の変更
        UINavigationBar.appearance().barTintColor = AppColor.primary
        // Navigation Bar の文字色の変更
        UINavigationBar.appearance().tintColor = AppColor.secondary
        // Navigation Bar のタイトルの文字色の変更
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: AppColor.background]
    }
    // -----＊＊追記部分＊＊----- //

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




