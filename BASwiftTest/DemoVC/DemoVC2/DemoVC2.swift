//
//  DemoVC2.swift
//  testSwift
//
//  Created by boai on 16/9/1.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DemoVC2: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var dataArray = [
        VideoModel(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        VideoModel(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        VideoModel(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        VideoModel(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        VideoModel(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        VideoModel(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
    ]
    
    let cellId = "DemoVC2ID" //获取CellId
    var _DemoVC2TableView = UITableView()
    var playVC = AVPlayerViewController()
    var playerView = AVPlayer()
    let playerVideoButton = UIButton(type: UIButtonType.Custom)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
    }
    
    func setupTableView() {
    
        _DemoVC2TableView.frame = self.view.bounds
        _DemoVC2TableView.delegate = self
        _DemoVC2TableView.dataSource = self
        
        _DemoVC2TableView.registerNib(UINib(nibName: "DemoVC2Cell", bundle: nil), forCellReuseIdentifier: cellId)
        
        self.view.addSubview(_DemoVC2TableView)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count:Int = dataArray.count else {
            print("没有数据")
        }
        return count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as!DemoVC2Cell

        let model = dataArray[indexPath.row];
        
        cell.backgroundImageView.image = UIImage(named: model.image)
        cell.authorLabel.text = model.title
        cell.timeLabel.text = model.source


        cell.playBlock = {
        
            let path = NSBundle.mainBundle().pathForResource("movie", ofType: "mp4")
            
            self.playerView = AVPlayer(URL: NSURL(fileURLWithPath: path!))
            
            self.playVC.player = self.playerView
            
            self.presentViewController(self.playVC, animated: true, completion: { () -> Void in
                self.playVC.player?.play()
            })
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
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
