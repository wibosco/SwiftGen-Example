//
//  MedicalViewController.swift
//  Medical
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class MedicalViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let icons: [UIImage?] = {
        var icons = [UIImage?]()
        
        let bundle = Bundle(for: MedicalViewController.self)
        icons.append(UIImage(named: "animal vaccine", in: bundle, with: nil))
        icons.append(UIImage(named: "chromosome", in: bundle, with: nil))
        icons.append(UIImage(named: "hospital", in: bundle, with: nil))
        icons.append(UIImage(named: "thermometer", in: bundle, with: nil))
        icons.append(UIImage(named: "virus", in: bundle, with: nil))
        icons.append(UIImage(named: "injection", in: bundle, with: nil))
        icons.append(UIImage(named: "band aid", in: bundle, with: nil))
        icons.append(UIImage(named: "dosage", in: bundle, with: nil))
        icons.append(UIImage(named: "chemotherapy", in: bundle, with: nil))
        icons.append(UIImage(named: "bacteria", in: bundle, with: nil))
        icons.append(UIImage(named: "blood test", in: bundle, with: nil))
        icons.append(UIImage(named: "dna structure", in: bundle, with: nil))
        icons.append(UIImage(named: "doctor", in: bundle, with: nil))
        icons.append(UIImage(named: "eye glasses", in: bundle, with: nil))
        icons.append(UIImage(named: "experiment", in: bundle, with: nil))
        icons.append(UIImage(named: "face mask", in: bundle, with: nil))
        icons.append(UIImage(named: "stethoscope", in: bundle, with: nil))
        icons.append(UIImage(named: "rubber gloves", in: bundle, with: nil))
        
        return icons
    }()
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bundle = Bundle(for: Self.self)
        collectionView.register(UINib(nibName: "MedicalCollectionViewCell", bundle: bundle), forCellWithReuseIdentifier: "MedicalCollectionViewCell")
        collectionView.register(UINib(nibName: "MedicalHeaderCollectionReusableView", bundle: bundle), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "MedicalHeaderCollectionReusableView")
    }
}

extension MedicalViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let icon = icons[indexPath.item]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicalCollectionViewCell", for: indexPath) as? MedicalCollectionViewCell else {
            fatalError("Unexpected type")
        }
        
        cell.iconImageView.image = icon
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "MedicalHeaderCollectionReusableView", for: indexPath) as? MedicalHeaderCollectionReusableView else {
            fatalError("Expected header")
        }
        let bundle  = Bundle(for: Self.self)
        headerView.labelTitle.text = NSLocalizedString("Medical.title", tableName: nil, bundle: bundle, value: "", comment: "")
        headerView.labelDescription.text = NSLocalizedString("Medical.description", tableName: nil, bundle: bundle, value: "", comment: "")
        
        return headerView
    }
}

extension MedicalViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        CGSize(width: collectionView.bounds.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 12.0)/3.0
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        4
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        4
    }
}
