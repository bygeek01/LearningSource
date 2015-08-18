//
//  ContentTableCollectionDataSource.swift
//  LunchApp
//
//  Created by hide on 2015/08/18.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class ContentTableCollectionDataSource: NSObject,UICollectionViewDataSource {
   
    override init() {
        super.init()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let contentTableCell = collectionView.dequeueReusableCellWithReuseIdentifier("contentTableCollectionCell", forIndexPath: indexPath) as! ContentTableViewCollectionCell
        return contentTableCell
    }
}
