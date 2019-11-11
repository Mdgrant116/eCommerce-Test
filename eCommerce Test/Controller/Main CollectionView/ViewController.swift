//
//  ViewController.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var mainCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
        mainCollectionView.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Main")
        
        mainCollectionView.layer.cornerRadius = 6
    }

}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: (view.frame.height / 2.5))
    }
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "Main", for: indexPath) as! MainCollectionViewCell
        cell.layer.cornerRadius = 6
        cell.layer.masksToBounds = true
        
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        return cell
        
    }
}
