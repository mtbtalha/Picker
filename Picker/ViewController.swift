//
//  ViewController.swift
//  Picker
//
//  Created by Talha Babar on 7/13/15.
//  Copyright (c) 2015 Talha Babar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.pagingEnabled = true
        collectionView.backgroundColor = UIColor.whiteColor()
        self.collectionView.showsHorizontalScrollIndicator = false
    }
    

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(CustomCellView.cardLayoutcellIdentifier, forIndexPath: indexPath) as! CustomCellView
        let url = NSURL(string: "http://manage.allheart.com/images/detail/gg2015/gg-2015---.jpg")
       // let data = NSData(contentsOfURL: url!)
        cell.imageView.sd_setImageWithURL(url!)
        cell.descriptionLabel.text = "Simple Shoes: Help get Quality Footwear back on your feet"
        cell.descriptionLabel.editable = false
        
        cell.productTypeLabel.text = "Footwear"
        cell.productTypeLabel.numberOfLines = 1
        cell.productTypeLabel.adjustsFontSizeToFitWidth = true
        cell.productTypeLabel.minimumScaleFactor = 0.5
        
        cell.regionLabel.text = "NEW YORK, NY"
        cell.regionLabel.numberOfLines = 1
        cell.regionLabel.adjustsFontSizeToFitWidth = true
        cell.regionLabel.minimumScaleFactor = 0.5
        
        cell.itemsRemainingLabel.text = "1236"
        cell.itemsRemainingLabel.numberOfLines = 1
        cell.itemsRemainingLabel.adjustsFontSizeToFitWidth = true
        cell.itemsRemainingLabel.minimumScaleFactor = 0.5
        
        cell.itemsRemainingTextLabel.text = "backers"
        cell.itemsRemainingTextLabel.numberOfLines = 1
        cell.itemsRemainingTextLabel.adjustsFontSizeToFitWidth = true
        cell.itemsRemainingTextLabel.minimumScaleFactor = 0.5
        
        cell.totalAmountLabel.text = "$109,810 USD"
        cell.totalAmountLabel.numberOfLines = 1
        cell.totalAmountLabel.adjustsFontSizeToFitWidth = true
        cell.totalAmountLabel.minimumScaleFactor = 0.5
        
        cell.plegdedForLabel.text = "pledged of $25,000"
        cell.plegdedForLabel.numberOfLines = 1
        cell.plegdedForLabel.adjustsFontSizeToFitWidth = true
        cell.plegdedForLabel.minimumScaleFactor = 0.5
        
        cell.remainingHoursLabel.text = "54"
        cell.remainingHoursLabel.numberOfLines = 1
        cell.remainingHoursLabel.adjustsFontSizeToFitWidth = true
        cell.remainingHoursLabel.minimumScaleFactor = 0.5
        
        cell.hoursToGoLabel.text = "hours to go"
        cell.hoursToGoLabel.numberOfLines = 1
        cell.hoursToGoLabel.adjustsFontSizeToFitWidth = true
        cell.hoursToGoLabel.minimumScaleFactor = 0.5
        
        return cell
    }

}

