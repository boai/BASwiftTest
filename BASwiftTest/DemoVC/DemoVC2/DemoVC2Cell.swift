//
//  DemoVC2Cell.swift
//  testSwift
//
//  Created by boai on 16/9/1.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit


struct VideoModel {
    let image:  String
    let title:  String
    let source: String
}

// 定义block、传任意类型，无返回值
typealias playButtonActionBlock = () -> ()



class DemoVC2Cell: UITableViewCell {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    // 创建block实例
    var playBlock: playButtonActionBlock?
    
    @IBAction func playButtonAction(sender: AnyObject) {
        
        self.playBlock?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
