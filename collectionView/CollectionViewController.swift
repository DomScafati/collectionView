//
//  CollectionViewController.swift
//  collectionView
//
//  Created by Field Employee on 2/11/21.
//

import UIKit

private let reuseIdentifier = "Cell"


class CollectionViewController: UICollectionViewController {
    let characterImage = [ #imageLiteral(resourceName: "ryuImage"),#imageLiteral(resourceName: "kenImage"),#imageLiteral(resourceName: "akumaImage"),#imageLiteral(resourceName: "chunliImage"),#imageLiteral(resourceName: "balrogImage"),#imageLiteral(resourceName: "zangiefImage")]
    let characterNames = ["Ryu", "Ken", "Akuma", "Chun-Li", "Boxer", "Zangief"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characterImage.count;
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //var cell = UICollectionViewCell();
        
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell
            
        cell?.characterImage.image = characterImage[indexPath.row];
        cell?.characterNameLabel.text = characterNames[indexPath.row]
        return cell!;

    }
}
