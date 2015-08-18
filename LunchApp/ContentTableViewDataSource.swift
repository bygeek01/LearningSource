//
//  ContentTableViewDataSource.swift
//  LunchApp
//
//  Created by hide on 2015/08/18.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class ContentTableViewDataSource: NSObject,UITableViewDataSource {
   
    override init() {
        super.init()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("contentTableViewCell") as! ContentTableViewCell
        cell.menuLabel.text = "menuName\(indexPath.section)-\(indexPath.row)"
        cell.shopNameLabel.text = "shopName\(indexPath.section)-\(indexPath.row)"
        return cell
    }
    
}
