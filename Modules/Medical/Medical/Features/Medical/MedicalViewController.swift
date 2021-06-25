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
        
        icons.append(Assets.animalVaccine.image)
        icons.append(Assets.chromosome.image)
        icons.append(Assets.hospital.image)
        icons.append(Assets.thermometer.image)
        icons.append(Assets.virus.image)
        icons.append(Assets.injection.image)
        icons.append(Assets.bandAid.image)
        icons.append(Assets.dosage.image)
        icons.append(Assets.chemotherapy.image)
        icons.append(Assets.bacteria.image)
        icons.append(Assets.bloodTest.image)
        icons.append(Assets.dnaStructure.image)
        icons.append(Assets.doctor.image)
        icons.append(Assets.eyeGlasses.image)
        icons.append(Assets.experiment.image)
        icons.append(Assets.faceMask.image)
        icons.append(Assets.stethoscope.image)
        icons.append(Assets.rubberGloves.image)
        
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
        headerView.labelTitle.text = Strings.Medical.title
        headerView.labelDescription.text = Strings.Medical.description
        
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
