//
//  ViewController.swift
//  LunchApp
//
//  Created by hide on 2015/08/17.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UITableViewDelegate {
    
    
    @IBOutlet weak var menuNavCollectionView: MenuNavCollectionView!
    @IBOutlet weak var contentTableCollectionView: ContentTableCollectionView!
    
    
    //初期化処理
    //section1のセルを選択状態に設定
    override func viewDidLoad() {
        super.viewDidLoad()
        menuNavCollectionView.delegate = self
        menuNavCollectionView.selectItemAtIndexPath(NSIndexPath(forRow: 0, inSection: 1), animated: true, scrollPosition: .None)
        contentTableCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    //menucellのサイズを画面幅/3に設定する
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        switch collectionView.tag {
        case 1:
            let cellSize = CGSize(width: collectionView.frame.width/3, height: 50)
            return cellSize
        default:
            let cellSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
            return cellSize
        }
        
    }
    
    //menucellタップ時の処理
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("tapped#:\(indexPath.section)")

        if indexPath.section == collectionView.numberOfSections()-2{
            
        }else{
            collectionView.scrollToItemAtIndexPath(indexPath, atScrollPosition: .CenteredHorizontally, animated:true)
        }
    }
    
    //tableviewDelegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let rowHeight = tableView.frame.height/5
        return rowHeight
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("selectRow:\(indexPath.row)")
    }

    
}

