//
//  AppTabBarControllerViewController.swift
//  SwiftGen-Example
//
//  Created by William Boles on 24/06/2021.
//

import UIKit

class AppTabBarController: UITabBarController {
    let circusViewController: UIViewController = {
        let viewController = Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: NSLocalizedString("Circus.title", comment: ""), image: nil, tag: 1002)

        return viewController
    }()

    // MARK: - View

    override open func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [circusViewController]
    }
}
