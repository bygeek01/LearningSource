//
//  ContentTableView.swift
//  LunchApp
//
//  Created by hide on 2015/08/18.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

import UIKit

class ContentTableView: UITableView {

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let nib = UINib(nibName: "ContentTableViewCell", bundle: nil)
        self.registerNib(nib, forCellReuseIdentifier: "contentTableViewCell")
    }
    
    

    
    
}
