//
//  ViewController.swift
//  BASwiftTest
//
//  Created by boai on 16/9/6.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataArray : [String] = ["1：tableView简单用法",
        "2：调用系统视频播放器",
        "3：scrollView简单用法"];
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.yellowColor()
        
        self.title = "博爱 swift Demo";
        
        self.setupTableView()
    }
    
    func setupTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = self.view.bounds
        self.view.addSubview(tableView)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.selectionStyle = .None
        let text = dataArray[indexPath.row]
        
        cell.textLabel?.text = text
        cell.textLabel?.textColor = UIColor.redColor()
        cell.textLabel?.font = UIFont.systemFontOfSize(15)
        
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //        print(NSString(format: "你点击了第 %ld 行！", indexPath.row) as String)
        print("你点击了第 \(indexPath.row) 行！")
        
        if indexPath.row == 0
        {
            let demoVC1 = DemoVC1()
            demoVC1.title = dataArray[indexPath.row]
            self.navigationController?.pushViewController(demoVC1, animated: true)
        }
        if indexPath.row == 1
        {
            let demoVC2 = DemoVC2()
            demoVC2.title = dataArray[indexPath.row]
            self.navigationController?.pushViewController(demoVC2, animated: true)
        }
        if indexPath.row == 2 {
            let demoVC3 = DemoVC3()
            
            self.navigationController?.pushViewController(demoVC3, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

