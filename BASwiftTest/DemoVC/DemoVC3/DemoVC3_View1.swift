//
//  DemoVC3_View1.swift
//  BASwiftTest
//
//  Created by boai on 16/9/6.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class DemoVC3_View1: UIView {

    var label = UILabel()
    
    init(frame: CGRect,text : String) {
        super.init(frame: frame)
        
        label.frame = CGRect(origin: CGPointZero, size: CGSize(width: BASCREEN_WIDTH, height: 30.0))
        label.text = text
        label.textAlignment = .Center
        label.center = CGPoint(x: BASCREEN_WIDTH/2, y: BAKSCREEN_HEIGHT/2)
        
        super.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
