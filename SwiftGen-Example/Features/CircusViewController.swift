//
//  CircusController.swift
//  SwiftGen-Example
//
//  Created by William Boles on 24/06/2021.
//

import UIKit

class CircusViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let icons: [UIImage?] = {
        var icons = [UIImage?]()
        
        icons.append(UIImage(named: "acrobatic bike"))
        icons.append(UIImage(named: "balloon dog"))
        icons.append(UIImage(named: "gum machine"))
        icons.append(UIImage(named: "monkey"))
        icons.append(UIImage(named: "ticket"))
        icons.append(UIImage(named: "magic box"))
        
        return icons
    }()
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = NSLocalizedString("Circus.title", comment: "")
        labelDescription.text = NSLocalizedString("Circus.description", comment: "")
        
        tableView.rowHeight = 120
        tableView.register(UINib(nibName: "CircusTableViewCell", bundle: .main), forCellReuseIdentifier: "CircusTableViewCell")
    }
}

extension CircusViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension CircusViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let icon = icons[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CircusTableViewCell", for: indexPath) as? CircusTableViewCell else {
            fatalError("Unexpected cell type")
        }
        cell.iconImageView.image = icon
        
        return cell
    }
}
