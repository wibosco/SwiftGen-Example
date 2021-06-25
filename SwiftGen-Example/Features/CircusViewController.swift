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
        
        icons.append(Assets.acrobaticBike.image)
        icons.append(Assets.balloonDog.image)
        icons.append(Assets.gumMachine.image)
        icons.append(Assets.monkey.image)
        icons.append(Assets.ticket.image)
        icons.append(Assets.magicBox.image)
        
        return icons
    }()
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = Strings.Circus.title
        labelDescription.text = Strings.Circus.description
        
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
