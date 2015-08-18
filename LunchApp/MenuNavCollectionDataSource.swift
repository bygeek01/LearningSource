//
//  MenuNavCollectionDataSource.swift
//  LunchApp
//
//  Created by hide on 2015/08/17.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class MenuNavCollectionDataSource: NSObject,UICollectionViewDataSource {
    //初期化処理
    override init(){
        super.init()
        //println("dataSource initialized")
    }
    
    //必須function.1(section数を設定する)
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 6
    }
    
    //必須function.2(section内のitem数を設定する)
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    //必須function.3(cellの表示内容を設定する)
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let menuNavCell = collectionView.dequeueReusableCellWithReuseIdentifier("menuNavCell", forIndexPath: indexPath) as! MenuNavCollectionCell
        menuNavCell.menuNavLabel.text = "menuNav\(indexPath.section)"
        return menuNavCell
    }
    
    
}
