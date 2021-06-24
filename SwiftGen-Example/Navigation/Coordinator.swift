//
//  Coordinator.swift
//  Stack
//
//  Created by William Boles on 24/06/2021.
//

import UIKit

public struct Coordinator {
    
    // MARK: - Init
    
    public init() { }
    
    // MARK: - Initial
    
    public func createInitialViewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(identifier: "CircusViewController")
    }
}
