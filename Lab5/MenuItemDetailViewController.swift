//
//  MenuItemDetailViewController.swift
//  Lab5
//
//  Created by 桑染 on 2020-05-20.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {

    var menuItem: MenuItem!
        @IBOutlet var titleLabel: UILabel!
        @IBOutlet var imageView: UIImageView!
        @IBOutlet var priceLabel: UILabel!
        @IBOutlet var detailTextLabel: UILabel!
        @IBOutlet var addToOrderButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        addToOrderButton.layer.cornerRadius = 5.0
        updateUI()
    }
        
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
        MenuController.shared.fetchImage(url: menuItem.imageURL) { (image) in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    @IBAction func addToOderButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        MenuController.shared.order.menuItems.append(menuItem)
    }
    
    
}
