//
//  MenuNavCollectionView.swift
//  LunchApp
//
//  Created by hide on 2015/08/17.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class MenuNavCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    //StoryBoard使用時の初期化処理
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        centreIfNeeded()
    }
    
    func centreIfNeeded() {
        let currentOffset         = contentOffset
        let contentWidth          = contentSize.width
        let centerOffsetX:CGFloat = (contentWidth - bounds.size.width)/2
        let distFromCentre        = Float(centerOffsetX-currentOffset.x)
        
        println("currntOffset:\(currentOffset)")
        println("centerOffsetX:\(centerOffsetX)")
        println("distFromCentre:\(fabsf(distFromCentre))")
        
        if fabsf(distFromCentre) > Float(contentWidth/4) {
            contentOffset = CGPoint(x: centerOffsetX, y: currentOffset.y)
            reloadData()
        }
    }
    
}
