//
//  ViewController.swift
//  LunchApp
//
//  Created by hide on 2015/08/17.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    
    
    @IBOutlet weak var menuNavCollectionView: MenuNavCollectionView!
    
    //初期化処理
    //section1のセルを選択状態に設定
    override func viewDidLoad() {
        super.viewDidLoad()
        menuNavCollectionView.delegate = self
        menuNavCollectionView.selectItemAtIndexPath(NSIndexPath(forRow: 0, inSection: 1), animated: true, scrollPosition: .None)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    //cellのサイズを画面幅/3に設定する
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellSize = CGSize(width: collectionView.frame.width/3, height: 50)
        return cellSize
    }
    
    //cellタップ時の処理
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("tapped#:\(indexPath.section)")

        if indexPath.section == collectionView.numberOfSections()-2{
            
        }else{
            collectionView.scrollToItemAtIndexPath(indexPath, atScrollPosition: .CenteredHorizontally, animated:true)
        }
        
    }

    
}

