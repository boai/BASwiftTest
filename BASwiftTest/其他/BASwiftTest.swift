//
//  BASwiftTest.swift
//  BASwiftTest
//
//  Created by boai on 16/9/6.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import Foundation
import UIKit

//// 获取屏幕宽度  高度
//let  BASCREEN_WIDTH   = UIScreen.mainScreen().bounds.width
//let  BAKSCREEN_HEIGHT = UIScreen.mainScreen().bounds.height


//这里你不能这样写获取屏幕宽度,因为你这样写了就算转屏也不会重新获取宽高的
var BASCREEN_WIDTH : CGFloat  {
    get {
        return UIScreen.mainScreen().bounds.width
    }
}

var BAKSCREEN_HEIGHT : CGFloat {
get {
    return UIScreen.mainScreen().bounds.height
}
}

        