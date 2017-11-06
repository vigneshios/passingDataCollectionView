//
//  ViewController.swift
//  passingDataCollectionView
//
//  Created by Apple on 03/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let showImagesArray = [UIImage(named: "got"),UIImage(named: "bb"),UIImage(named: "vik"),UIImage(named: "dex"),UIImage(named: "sh"),UIImage(named: "fri"),UIImage(named: "hoc"),UIImage(named: "han"),UIImage(named: "mr"),UIImage(named: "cas")]
    
    let showTitlesArray = ["Game Of Thrones","Breaking Bad","Viking","Dexter","Sherlock","Fringe","House Of Cards","Hannibal","MR Robot","Castle",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "passingdata", for: indexPath) as! DatasCell
        cell.imageView.image = showImagesArray[indexPath.row]
        cell.titleLabel.text = showTitlesArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let main : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailsVC = main.instantiateViewController(withIdentifier: "detailsVC") as! DetailsVC
        
        detailsVC.image = showImagesArray[indexPath.row]!
        detailsVC.labelText = showTitlesArray[indexPath.row]
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}
