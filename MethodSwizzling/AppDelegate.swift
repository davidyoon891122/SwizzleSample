//
//  AppDelegate.swift
//  MethodSwizzling
//
//  Created by iMac on 2022/05/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        UIViewController.swizzleMethod
        return true
    }
}

