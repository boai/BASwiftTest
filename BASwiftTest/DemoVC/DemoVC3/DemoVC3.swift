//
//  DemoVC3.swift
//  BASwiftTest
//
//  Created by boai on 16/9/6.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class DemoVC3: UIViewController {

    let scrollView = UIScrollView()
    let tableView1 = UITableView()
    let tableView2 = UITableView()
    let tableView3 = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.隐藏状态栏
        UIApplication.sharedApplication().statusBarHidden = true
        
        // 2.初始化scrollview
        self.setupScrollView()
    }
    
    // 2.初始化scrollview
    func setupScrollView() {
    
        // 2.1设置初始属性
        self.scrollView.frame = CGRectMake(0, 0, BASCREEN_WIDTH, BAKSCREEN_HEIGHT)
        self.scrollView.contentSize = CGSizeMake(BASCREEN_WIDTH * 2, BAKSCREEN_HEIGHT)
        self.scrollView.pagingEnabled = true
        
        
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
