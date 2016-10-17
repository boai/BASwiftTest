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
    
    var subView1 : DemoVC3_View1?
    
    var subView2 : DemoVC3_View2?
    
    var subView3 : DemoVC3_View1?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.隐藏状态栏
//        UIApplication.sharedApplication().statusBarHidden = true
        
        self.automaticallyAdjustsScrollViewInsets = false
        // 2.初始化scrollview
        self.setupScrollView()
        
        self.setupSubView()
    }
    
    // 2.初始化scrollview
    func setupScrollView() {
    
        // 2.1设置初始属性
        scrollView.pagingEnabled = true
        scrollView.bounces = false
        scrollView.backgroundColor = UIColor.whiteColor()
        scrollView.indicatorStyle = UIScrollViewIndicatorStyle.Default
        view.addSubview(scrollView)

    }
    
    override func viewDidLayoutSubviews() {
        scrollView.frame = CGRectMake(0, 0, BASCREEN_WIDTH, BAKSCREEN_HEIGHT)
        scrollView.contentSize = CGSizeMake(BASCREEN_WIDTH * 3, BAKSCREEN_HEIGHT)
        
        subView1?.frame = CGRect(x: 0.0, y: 0.0, width: BASCREEN_WIDTH, height: scrollView.frame.height)
        
        subView2?.frame = CGRect(x: BASCREEN_WIDTH, y: 0.0, width: BASCREEN_WIDTH, height: scrollView.frame.height)
        
        subView3?.frame = CGRect(x: BASCREEN_WIDTH * 2, y: 0.0, width: BASCREEN_WIDTH, height: scrollView.frame.height)
    }
    
    
    func setupSubView() {
        
        subView1 = DemoVC3_View1(frame: CGRect(x: 0.0, y: 0.0, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT), text: "晓峰是逗B吗?")
        subView1!.backgroundColor = UIColor.greenColor()
        scrollView.addSubview(subView1!)
        
        subView2 = DemoVC3_View2(frame: CGRect(x: BASCREEN_WIDTH, y: 0.0, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT))
        subView2!.backgroundColor = UIColor.cyanColor()
        scrollView.addSubview(subView2!)
        
        subView2!.DemoVC3_View2ActionBlock = { (tableView: UITableView, indexPath: NSIndexPath, dataArray : NSArray) -> Void in

            let alertController = UIAlertController(title: "论晓峰是否逗B", message: "晓峰是逗B", preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            let okAction = UIAlertAction(title: "好的", style: .Default,
                handler: {
                    action in
                    print("点击了确定")
            })
            alertController.addAction(cancelAction)
            alertController.addAction(okAction)
            self .presentViewController(alertController, animated: true, completion: nil)
        }
        
        subView3 = DemoVC3_View1(frame: CGRect(x: BASCREEN_WIDTH * 2, y: 0.0, width: BASCREEN_WIDTH, height: BAKSCREEN_HEIGHT), text: "晓峰真的是逗B!!")
        subView3!.backgroundColor = UIColor.redColor()
        scrollView.addSubview(subView3!)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
