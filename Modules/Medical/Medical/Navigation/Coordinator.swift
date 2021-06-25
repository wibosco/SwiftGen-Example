//
//  Coordinator.swift
//  Stack
//
//  Created by William Boles on 20/06/2021.
//

import UIKit

public class Coordinator {
    
    // MARK: - Init
    
    public init() { }
    
    // MARK: - Initial
    
    public func createInitialViewController() -> UIViewController {
        let bundle = Bundle(for: Self.self)
        let storyboard = UIStoryboard(name: "Medical", bundle: bundle)
        return storyboard.instantiateViewController(identifier: "MedicalViewController")
    }
}
