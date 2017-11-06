//
//  DetailsViewController.swift
//  passingDataCollectionView
//
//  Created by Apple on 05/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var detailedImageView: UIImageView!
    
    @IBOutlet weak var detailedTitleLabel: UILabel!
    
    var image = UIImage()
    var labelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailedImageView.image = image
        detailedTitleLabel.text = labelText
        
        
    }

}
