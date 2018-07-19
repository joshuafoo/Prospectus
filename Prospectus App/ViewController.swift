//
//  ViewController.swift
//  Prospectus App
//
//  Created by E-Rong Yong on 16/7/18.
//  Copyright © 2018 E-Rong Yong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate ,UICollectionViewDataSource {
    
    let imageArray = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5")]
    let nameArray = ["Category 1", "Category 2", "Category 3", "Category 4", "Category 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        
        cell.imgImage.image = imageArray[indexPath.row]
        cell.myLabel.text! = nameArray[indexPath.row]
        
        return cell
    }
    
    
}

