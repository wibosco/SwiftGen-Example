//
//  EducationViewController.swift
//  Education
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class EducationViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var imageViewA: UIImageView!
    @IBOutlet weak var imageViewB: UIImageView!
    @IBOutlet weak var imageViewC: UIImageView!
    @IBOutlet weak var imageViewD: UIImageView!
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = Strings.Education.title
        labelDescription.text = Strings.Education.description
        
        imageViewA.image = Assets.abacus.image
        imageViewB.image = Assets.alarmClock.image
        imageViewC.image = Assets.compass.image
        imageViewD.image = Assets.maths.image
    }
}

