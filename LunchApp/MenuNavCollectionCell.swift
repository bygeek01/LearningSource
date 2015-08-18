//
//  MenuNavCollectionCell.swift
//  LunchApp
//
//  Created by hide on 2015/08/17.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class MenuNavCollectionCell: UICollectionViewCell{
    
    @IBOutlet weak var menuNavLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    //StoryBoard使用時の初期化処理
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //println("collectionCell initialized")
        
    }
    

}
