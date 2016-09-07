//
//  DemoVC3.swift
//  BASwiftTest
//
//  Created by boai on 16/9/6.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class DemoVC3: UIViewController {

    var scrollView = UIScrollView()
    let tableView1 = UITableView()
    let tableView2 = UITableView()
    let tableView3 = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.隐藏状态栏
        UIApplication.sharedApplication().statusBarHidden = true
        
        // 2.初始化scrollview
        self.setupScrollView()
        
        self.setupSubView()
    }
    
    // 2.初始化scrollview
    func setupScrollView() {
    
        // 2.1设置初始属性
        scrollView.frame = CGRectMake(0, 0, BASCREEN_WIDTH, BAKSCREEN_HEIGHT)
        scrollView.contentSize = CGSizeMake(0.0, BAKSCREEN_HEIGHT * 3)
        scrollView.pagingEnabled = true
        scrollView.backgroundColor = UIColor.whiteColor()
        view.addSubview(scrollView)

    }
    
    
    func setupSubView() {
        
        let subView1 = DemoVC3_View1(frame: CGRect(x: 0.0, y: 0.0, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT), text: "博爱是逗B吗?")
        subView1.backgroundColor = UIColor.greenColor()
        scrollView.addSubview(subView1)
        
        let subView2 = DemoVC3_View1(frame: CGRect(x: 0.0, y: BAKSCREEN_HEIGHT, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT), text: "博爱真的是逗B吗?")
        subView2.backgroundColor = UIColor.cyanColor()
        scrollView.addSubview(subView2)
        
        let subView3 = DemoVC3_View1(frame: CGRect(x: 0.0, y: BAKSCREEN_HEIGHT * 2, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT), text: "博爱真的是逗B!!")
        subView3.backgroundColor = UIColor.redColor()
        scrollView.addSubview(subView3)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
