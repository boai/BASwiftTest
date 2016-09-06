//
//  DemoVC1.swift
//  testSwift
//
//  Created by boai on 16/9/1.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class DemoVC1: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var fontNames = ["PingFangSC-Medium",
        "EuphemiaUCAS-Italic",
        "EuphemiaUCAS"]
    var fontRowIndex = 0;
    let _fontButton = UIButton(type: UIButtonType.Custom)
    
//    let KSCREEN_WITH = UIScreen.mainScreen().bounds.size.width
//    let KSCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
//    
    let _DemoVC1TableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellowColor()
        self.setupTableView()
        self.setupButton()
        
    }
    
    func setupTableView() {
    
        _DemoVC1TableView.frame = self.view.bounds
        _DemoVC1TableView.delegate = self
        _DemoVC1TableView.dataSource = self
        
        self.view.addSubview(_DemoVC1TableView)
    }
    
    func setupButton() {
        
        _fontButton.frame = CGRectMake((BASCREEN_WIDTH-100)/2, BAKSCREEN_HEIGHT - 150, 100, 100)
        _fontButton.backgroundColor = UIColor.redColor()
        _fontButton.layer.cornerRadius = 50
        _fontButton.setTitle("改变字体", forState: .Normal)
        _fontButton.addTarget(self, action: ("changeFontAction"), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(_fontButton)
        self.view.bringSubviewToFront(_fontButton)
    }
    
    func changeFontAction() {
        fontRowIndex = (fontRowIndex + 1) % 3
        _DemoVC1TableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.selectionStyle = .None
        //        let text = data[indexPath.row]
        
        cell.textLabel?.text = "第 \(indexPath.row) 行！"
        cell.textLabel?.textColor = UIColor.redColor()
        cell.textLabel?.font = UIFont(name: fontNames[fontRowIndex], size: 16)
        
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //        print(NSString(format: "你点击了第 %ld 行！", indexPath.row) as String)
        print("你点击了第 \(indexPath.row) 行！")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
