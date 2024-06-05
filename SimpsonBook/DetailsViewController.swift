//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Amrah on 02.06.24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        imageView.image = selectedSimpson?.image
        jobLabel.text = selectedSimpson?.job
        
    }

}
