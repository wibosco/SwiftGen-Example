//
//  AppTabBarControllerViewController.swift
//  SwiftGen-Example
//
//  Created by William Boles on 24/06/2021.
//

import UIKit
import Medical
import Education

class AppTabBarController: UITabBarController {
    let medicalViewController: UIViewController = {
        let viewController = Medical.Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: NSLocalizedString("Tab.item.medical", comment: ""), image: nil, tag: 1000)

        return viewController
    }()
    
    let educationViewController: UIViewController = {
        let viewController = Education.Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title:  NSLocalizedString("Tab.item.education", comment: ""), image: nil, tag: 1001)

        return viewController
    }()
    
    let circusViewController: UIViewController = {
        let viewController = Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: NSLocalizedString("Tab.item.circus", comment: ""), image: nil, tag: 1002)

        return viewController
    }()

    // MARK: - View

    override open func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [medicalViewController, educationViewController, circusViewController]
    }
}
