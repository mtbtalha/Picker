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
//        let cardLayout = UICollectionViewFlowLayout()
//        cardLayout.sectionInset = UIEdgeInsets(top: 30, left: 20, bottom: 50, right:20)
//        cardLayout.itemSize = CGSize(width :236,height :367)
//        cardLayout.minimumLineSpacing = 75
//        cardLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
//        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: cardLayout)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.pagingEnabled = true
//        collectionView.registerClass(CustomCellView.self, forCellWithReuseIdentifier: CustomCellView.cellIdentifier)
        collectionView.backgroundColor = UIColor.whiteColor()
        self.collectionView.showsHorizontalScrollIndicator = false
        self.view.addSubview(collectionView!)
    }
    

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(CustomCellView.cellIdentifier, forIndexPath: indexPath) as! CustomCellView
//        cell.backgroundColor = UIColor.blackColor()
        let url = NSURL(string: "http://manage.allheart.com/images/detail/gg2015/gg-2015---.jpg")
        let data = NSData(contentsOfURL: url!)
        cell.imageView.image = UIImage(data: data!)
        cell.descriptionLabel.text = "Simple Shoes: Help get Quality Footwear back on your feet"
        cell.productTypeLabel.text = "Footwear"
        cell.regionLabel.text = "NEW YORK, NY"
        cell.itemsRemaining.text = "1236"
        cell.itemsRemainingText.text = "backers"
        cell.totalAmount.text = "$109,810 USD"
        cell.plegdedFor.text = "pledged of $25,000"
        cell.remainingHours.text = "54"
        cell.hoursToGo.text = "hours to go"
        return cell
    }

}

