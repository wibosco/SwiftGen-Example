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
        
        let bundle = Bundle(for: Self.self)
        
        labelTitle.text = NSLocalizedString("Education.title", tableName: nil, bundle: bundle, value: "", comment: "")
        labelDescription.text = NSLocalizedString("Education.description", tableName: nil, bundle: bundle, value: "", comment: "")
        
        imageViewA.image = UIImage(named: "abacus", in: bundle, with: nil)
        imageViewB.image = UIImage(named: "alarm clock", in: bundle, with: nil)
        imageViewC.image = UIImage(named: "compass", in: bundle, with: nil)
        imageViewD.image = UIImage(named: "maths", in: bundle, with: nil)
    }
}

