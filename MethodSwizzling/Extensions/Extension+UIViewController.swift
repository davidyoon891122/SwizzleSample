//
//  Extension+UIViewController.swift
//  MethodSwizzling
//
//  Created by iMac on 2022/05/26.
//

import UIKit

extension UIViewController {
    static let swizzleMethod: Void = {
        let originalSelector = #selector(viewWillAppear)
        let swizzledSelector = #selector(swizzleViewWillAppear)

        let originalMethod = class_getInstanceMethod(UIViewController.self, originalSelector)
        let swizzledMethod = class_getInstanceMethod(UIViewController.self, swizzledSelector)
        if let origin = originalMethod, let swizzle = swizzledMethod {
            method_exchangeImplementations(origin, swizzle)
        }
    }()

    @objc func swizzleViewWillAppear() {
        print("swizzledViewWillAppear")
    }
}
